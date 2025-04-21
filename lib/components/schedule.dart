import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:pretalx_schedule/api/models/schedule.dart';
import 'package:pretalx_schedule/extensions/datetime.dart';

class Schedule extends StatefulWidget {
  final ApiSchedule schedule;

  const Schedule({super.key, required this.schedule});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  late LinkedScrollControllerGroup _horizontalController;
  late ScrollController _roomBarController;
  late Map<int, ScrollController> _dayHorizontalControllers;

  final _nowKey = GlobalKey();

  static const double _timeBarWidth = 70;
  double _hourHeight = 120;

  @override
  void initState() {
    super.initState();
    _horizontalController = LinkedScrollControllerGroup();
    _roomBarController = _horizontalController.addAndGet();
    _dayHorizontalControllers = Map.fromEntries(
      widget.schedule.conference.days.map(
        (day) => MapEntry(day.index, _horizontalController.addAndGet()),
      ),
    );
  }

  @override
  void dispose() {
    _roomBarController.dispose();
    _dayHorizontalControllers.forEach((i, c) => c.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double roomWidth = MediaQuery.of(context).size.width / 1.5;

    Set<String> rooms =
        widget.schedule.conference.days.expand((day) => day.rooms.keys).toSet();

    return Column(
      children: [
        _ScheduleRoomBar(
          controller: _roomBarController,
          rooms: rooms,
          paddingLeft: _timeBarWidth,
          roomWidth: roomWidth,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...widget.schedule.conference.days
                    .map(
                      (day) => _ScheduleDay(
                        controller: _dayHorizontalControllers[day.index]!,
                        timeBarWidth: _timeBarWidth,
                        roomWidth: roomWidth,
                        hourHeight: _hourHeight,
                        day: day,
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _ScheduleRoomBar extends StatelessWidget {
  final ScrollController controller;
  final Set<String> rooms;
  final double paddingLeft;
  final double roomWidth;

  const _ScheduleRoomBar({
    super.key,
    required this.controller,
    required this.rooms,
    required this.paddingLeft,
    required this.roomWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        child: Row(
          children: [
            SizedBox(
              width: paddingLeft,
            ),
            ...rooms.map(
              (room) => Container(
                width: roomWidth,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(room),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ScheduleDay extends StatelessWidget {
  final ApiDay day;
  final ScrollController controller;
  final double timeBarWidth;
  final double roomWidth;
  final double hourHeight;

  const _ScheduleDay({
    super.key,
    required this.day,
    required this.controller,
    required this.timeBarWidth,
    required this.roomWidth,
    required this.hourHeight,
  });

  @override
  Widget build(BuildContext context) {
    final dayStart = DateTime.parse(day.dayStart).toLocal();
    final dayEnd = DateTime.parse(day.dayEnd).toLocal();

    final eventStarts = day.rooms.values.expand(
      (events) => events.map(
        (event) => DateTime.parse(event.date).toLocal(),
      ),
    );

    final eventEnds = day.rooms.values.expand(
      (events) => events.map(
        (event) {
          var [hours, minutes] = event.duration.split(":");
          return DateTime.parse(event.date).toLocal().add(Duration(
                hours: int.parse(hours),
                minutes: int.parse(minutes),
              ));
        },
      ),
    );

    final actualDayStart = eventStarts
        .fold(dayEnd, (a, b) => a.isBefore(b) ? a : b)
        .subtract(const Duration(hours: 1))
        .floor();

    final actualDayEnd = eventEnds
        .fold(dayStart, (a, b) => a.isAfter(b) ? a : b)
        .add(const Duration(hours: 1))
        .floor();

    final diff = actualDayEnd.difference(actualDayStart).inHours.abs();

    final isNowToday = DateTime.timestamp().isAfter(actualDayStart) &&
        DateTime.timestamp().isBefore(actualDayEnd);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ScheduleDayHeader(date: dayStart, index: day.index),
        Row(
          children: [
            Stack(
              children: [
                _TimeColumn(
                  start: actualDayStart,
                  end: actualDayEnd,
                  width: timeBarWidth,
                  hourHeight: hourHeight,
                ),
                _NowPointerTimeColumn(
                  dayStart: actualDayStart,
                  dayEnd: actualDayEnd,
                  width: timeBarWidth,
                  hourHeight: hourHeight,
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                child: Stack(
                  children: [
                    _TimeGrid(
                      width: day.rooms.keys.length * roomWidth,
                      hourHeight: hourHeight,
                      count: diff + 1,
                    ),
                    ...generateEvents(actualDayStart),
                    _NowPointerGridLine(
                      dayStart: actualDayStart,
                      dayEnd: actualDayEnd,
                      width: day.rooms.keys.length * roomWidth,
                      hourHeight: hourHeight,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  List<Widget> generateEvents(DateTime dayStart) {
    List<Widget> out = [];

    for (var (index, events) in day.rooms.values.indexed) {
      for (var event in events) {
        var eventStart = DateTime.parse(event.date).toLocal();
        var [hours, minutes] = event.duration.split(":");
        var eventEnd = eventStart.add(Duration(
          hours: int.parse(hours),
          minutes: int.parse(minutes),
        ));

        out.add(_EventItem(
          dayStart: dayStart,
          eventStart: eventStart,
          eventEnd: eventEnd,
          hourHeight: hourHeight,
          roomWidth: roomWidth,
          roomId: index,
          title: event.title,
        ));
      }
    }

    return out;
  }
}

class _NowPointerGridLine extends StatefulWidget {
  final DateTime dayStart;
  final DateTime dayEnd;
  final double width;
  final double hourHeight;

  const _NowPointerGridLine({
    super.key,
    required this.dayStart,
    required this.dayEnd,
    required this.width,
    required this.hourHeight,
  });

  @override
  State<_NowPointerGridLine> createState() => _NowPointerGridLineState();
}

class _NowPointerGridLineState extends State<_NowPointerGridLine> {
  DateTime _now = DateTime.timestamp().toLocal();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _now = DateTime.now();

    final secondsUntilNextMinute = 60 - _now.second;
    _timer = Timer(Duration(seconds: secondsUntilNextMinute), () {
      setState(() {
        _now = DateTime.now();
      });
      _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
        setState(() {
          _now = DateTime.now();
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_now.isAfter(widget.dayEnd)) {
      return Container();
    }

    double hourSinceDayStart =
        widget.dayStart.difference(_now).inMinutes.abs().toDouble() / 60.0;

    DateFormat formatter = DateFormat('HH:mm');

    return Positioned(
      top: widget.hourHeight * hourSinceDayStart,
      left: 0,
      width: widget.width,
      height: widget.hourHeight,
      child: const Center(
        child: Divider(
          color: Colors.red,
        ),
      ),
    );
  }
}

class _NowPointerTimeColumn extends StatefulWidget {
  final DateTime dayStart;
  final DateTime dayEnd;
  final double width;
  final double hourHeight;

  const _NowPointerTimeColumn({
    super.key,
    required this.dayStart,
    required this.dayEnd,
    required this.width,
    required this.hourHeight,
  });

  @override
  State<_NowPointerTimeColumn> createState() => _NowPointerTimeColumnState();
}

class _NowPointerTimeColumnState extends State<_NowPointerTimeColumn> {
  DateTime _now = DateTime.timestamp().toLocal();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _now = DateTime.now();

    final secondsUntilNextMinute = 60 - _now.second;
    _timer = Timer(Duration(seconds: secondsUntilNextMinute), () {
      setState(() {
        _now = DateTime.now();
      });
      _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
        setState(() {
          _now = DateTime.now();
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_now.isAfter(widget.dayEnd)) {
      return Container();
    }

    double hourSinceDayStart =
        widget.dayStart.difference(_now).inMinutes.abs().toDouble() / 60.0;

    DateFormat formatter = DateFormat('HH:mm');

    return Positioned(
      top: widget.hourHeight * hourSinceDayStart,
      left: 0,
      width: widget.width,
      height: widget.hourHeight,
      child: Center(
        child: Text(
          formatter.format(_now),
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

class _EventItem extends StatelessWidget {
  final DateTime dayStart;
  final DateTime eventStart;
  final DateTime eventEnd;
  final double hourHeight;
  final double roomWidth;
  final int roomId;
  final String title;

  const _EventItem(
      {super.key,
      required this.dayStart,
      required this.eventStart,
      required this.eventEnd,
      required this.hourHeight,
      required this.roomWidth,
      required this.roomId,
      required this.title});

  @override
  Widget build(BuildContext context) {
    double hourLength =
        eventStart.difference(eventEnd).inMinutes.abs().toDouble() / 60.0;
    double hourSinceDayStart =
        dayStart.difference(eventStart).inMinutes.abs().toDouble() / 60.0;

    return Positioned(
      top: hourHeight * hourSinceDayStart + hourHeight / 2,
      left: roomWidth * roomId.toDouble(),
      width: roomWidth,
      height: hourHeight * hourLength,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          color: Theme.of(context).colorScheme.surfaceContainerHigh,
          child: Text(title),
        ),
      ),
    );
  }
}

class _TimeGrid extends StatelessWidget {
  final double width;
  final double hourHeight;
  final int count;

  const _TimeGrid({
    super.key,
    required this.width,
    required this.count,
    required this.hourHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        count,
        (i) => SizedBox(
          width: width,
          height: hourHeight,
          child: const Center(child: Divider()),
        ),
      ),
    );
  }
}

class _TimeColumn extends StatelessWidget {
  final DateTime start;
  final DateTime end;
  final double width;
  final double hourHeight;

  _TimeColumn({
    super.key,
    required DateTime start,
    required DateTime end,
    required this.width,
    required this.hourHeight,
  })  : this.start = start.floor(),
        this.end = end.floor();

  @override
  Widget build(BuildContext context) {
    Duration duration = start.difference(end);
    DateFormat formatter = DateFormat('HH:mm');

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        duration.inHours.abs() + 1,
        (i) {
          DateTime date = start.add(Duration(hours: i));
          return SizedBox(
            height: hourHeight,
            width: width,
            child: Center(
              child: Text(formatter.format(date)),
            ),
          );
        },
      ),
    );
  }
}

class _ScheduleDayHeader extends StatelessWidget {
  final DateTime date;
  final int index;

  final DateFormat format = DateFormat('EEE, d. MMM yyyy');

  _ScheduleDayHeader({
    super.key,
    required this.date,
    required this.index,
  });

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
