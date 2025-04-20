import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:pretalx_schedule/api/models/schedule.dart';

class ScheduleCalendar extends StatelessWidget {
  final ApiSchedule? schedule;

  const ScheduleCalendar({super.key, this.schedule});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: schedule == null
          ? const _DayCalendar()
          : Column(
              children: schedule!.conference.days.expand(buildDay).toList(),
            ),
    );
  }

  List<Widget> buildDay(ApiDay day) {
    DateTime start = DateTime.parse(day.dayEnd);
    DateTime end = DateTime.parse(day.dayStart);

    for (var room in day.rooms.entries) {
      for (var event in room.value) {
        DateTime eventStart = DateTime.parse(event.date);
        if (eventStart.isBefore(start)) {
          start = eventStart;
        }

        Duration eventDuration = parseDuration(event.duration);
        DateTime eventEnd = eventStart.add(eventDuration);

        if (eventEnd.isAfter(end)) {
          end = eventEnd;
        }
      }
    }

    Duration dayDuration = end.difference(start);

    return [
      _DayHeader(
        date: start,
        index: day.index,
      ),
      _DayCalendar(
        startHour: start.hour - 1,
        endHour: start.hour + dayDuration.inHours + 1,
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

class _DayCalendar extends StatelessWidget {
  final int startHour;
  final int endHour;
  final double cellHeight;

  const _DayCalendar({
    super.key,
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
        _TimeGrid(
          cellHeight: cellHeight,
          countHours: endHour - startHour,
        ),
      ],
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
    return Expanded(
      child: Column(
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
      ),
    );
  }
}
