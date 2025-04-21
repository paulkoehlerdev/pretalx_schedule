import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:pretalx_schedule/api/models/schedule.dart';
import 'package:pretalx_schedule/components/peopleCard.dart';

class EventDialog extends StatelessWidget {
  final ApiEvent event;

  const EventDialog({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    final DateFormat format = DateFormat('HH:mm EEE, d. MMM yyyy');

    return AlertDialog(
      actionsPadding: const EdgeInsets.only(
        top: 5.0,
        bottom: 5.0,
        right: 15,
        left: 15,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(AppLocalizations.of(context)!.close.toUpperCase()),
        ),
      ],
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            event.subtitle.length > 0
                ? Text(
                    event.subtitle,
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                : Container(),
            PeopleCard(people: event.persons),
            const Divider(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.time),
                    Text(AppLocalizations.of(context)!.duration),
                    Text(AppLocalizations.of(context)!.track),
                    Text(AppLocalizations.of(context)!.location),
                  ],
                ),
                const VerticalDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(format.format(DateTime.parse(event.date))),
                    Text(event.duration),
                    Text(event.track),
                    Text(event.room),
                  ],
                )
              ],
            ),
            const Divider(),
            event.description.length > 0
                ? Text(event.description)
                : Container(),
            Text(event.abstract),
          ],
        ),
      ),
    );
  }
}
