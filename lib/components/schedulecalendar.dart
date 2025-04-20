import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:pretalx_schedule/api/models/schedule.dart';

class ScheduleCalendar extends StatelessWidget {
  final ApiSchedule? schedule;

  const ScheduleCalendar({this.schedule});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: schedule == null
          ? const _DayCalendar(
              events: {},
            )
          : Column(
              children: schedule!.conference.days.expand(buildDay).toList(),
            ),
    );
  }

  List<Widget> buildDay(ApiDay day) {
    final Map<String, List<Widget>> events = {};
    final Map<String, Color> trackColors = {};

    for (var track in schedule!.conference.tracks) {
      trackColors[track.name] = parseHexColor(track.color);
    }

    DateTime start = DateTime.parse(day.dayEnd).toLocal();
    DateTime end = DateTime.parse(day.dayStart).toLocal();

    for (var room in day.rooms.entries) {
      for (var event in room.value) {
        DateTime eventStart = DateTime.parse(event.date).toLocal();
        if (eventStart.isBefore(start)) {
          start = eventStart;
        }

        Duration eventDuration = parseDuration(event.duration);
        DateTime eventEnd = eventStart.add(eventDuration);

        if (eventEnd.isAfter(end)) {
          end = eventEnd;
        }

        int relativeEventStartMinutes = eventStart.difference(start).inMinutes;

        if (!events.keys.contains(event.room)) {
          events[event.room] = [];
        }

        events[event.room]!.add(
          _Event(
            startMinutes: relativeEventStartMinutes + 90,
            durationMinutes: eventDuration.inMinutes,
            title: event.title,
            color: trackColors[event.track],
          ),
        );
      }
    }

    Duration dayDuration = end.difference(start);

    return [
      _DayHeader(
        date: start,
        index: day.index,
      ),
      Stack(
        children: [
          _DayCalendar(
            events: events,
            startHour: start.hour - 1,
            endHour: start.hour + dayDuration.inHours + 1,
          ),
        ],
      ),
    ];
  }

  Duration parseDuration(String duration) {
    var [hours, minutes] = duration.split(":");
    return Duration(
      hours: int.parse(hours),
      minutes: int.parse(minutes),
    );
  }

  Color parseHexColor(String hexColor) {
    final hex = hexColor.replaceAll('#', '');
    final value = int.parse(hex, radix: 16);
    return Color(hex.length == 6 ? 0xFF000000 + value : value);
  }
}

class _DayHeader extends StatelessWidget {
  final DateTime date;
  final int index;
  final DateFormat format = DateFormat('EEE, d. MMM yyyy');

  _DayHeader({super.key, required this.date, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      child: Row(
        children: [
          Text(AppLocalizations.of(context)!.dayText + index.toString()),
          Expanded(child: Container()),
          Text(format.format(date)),
        ],
      ),
    );
  }
}

class _Event extends StatelessWidget {
  final double cellHeight;
  final int durationMinutes;
  final int startMinutes;
  final String title;
  final Color? color;

  const _Event({
    super.key,
    required this.startMinutes,
    required this.durationMinutes,
    required this.title,
    required this.color,
    this.cellHeight = 60.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.0,
        right: 5.0,
        top: (startMinutes / 60) * cellHeight,
      ),
      child: SizedBox(
        height: cellHeight * (durationMinutes / 60),
        child: Expanded(
          child: Card(
            color: color,
            child: Expanded(
              child: Center(
                child: Text(title),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DayCalendar extends StatelessWidget {
  final int startHour;
  final int endHour;
  final double cellHeight;
  final Map<String, List<Widget>> events;

  const _DayCalendar({
    super.key,
    required this.events,
    this.startHour = 0,
    this.endHour = 24,
    this.cellHeight = 60,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TimeColumn(
          cellHeight: cellHeight,
          startHour: startHour,
          endHour: endHour,
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  child: _TimeGrid(
                    cellHeight: cellHeight,
                    countHours: endHour - startHour,
                  ),
                ),
                _EventGrid(events: events),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _EventGrid extends StatelessWidget {
  final Map<String, List<Widget>> events;

  const _EventGrid({
    super.key,
    required this.events,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: events.entries
          .map((entry) => SizedBox(
                width: screenWidth / 1.5,
                child: Stack(
                  children: entry.value,
                ),
              ))
          .toList(),
    );
  }
}

class _TimeColumn extends StatelessWidget {
  final double cellHeight;
  final int startHour;
  final int endHour;

  const _TimeColumn({
    super.key,
    this.cellHeight = 60,
    this.startHour = 0,
    this.endHour = 24,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        children: List.generate(endHour - startHour, (hour) {
          return SizedBox(
            height: cellHeight,
            child: Center(
              child: Text(
                '${((startHour + hour) % 24).toString().padLeft(2, '0')}:00',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _TimeGrid extends StatelessWidget {
  final double cellHeight;
  final int countHours;

  const _TimeGrid({
    super.key,
    this.cellHeight = 60,
    this.countHours = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        countHours,
        (hour) {
          return SizedBox(
            height: cellHeight,
            child: const Center(
              child: Divider(),
            ),
          );
        },
      ),
    );
  }
}
