import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:pretalx_schedule/api/models/schedule.dart';

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
            _PeopleCard(people: event.persons),
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

class _PeopleCard extends StatelessWidget {
  final List<ApiPerson> people;

  const _PeopleCard({super.key, required this.people});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Theme.of(context).colorScheme.onPrimary,
      Theme.of(context).colorScheme.onSecondary,
      Theme.of(context).colorScheme.onTertiary,
    ];

    if (people.length == 0) {
      return Container();
    }

    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        children: [
          Stack(
            children: List.generate(
              people.length,
              (i) {
                final person = people[i];

                return Padding(
                  padding: EdgeInsets.only(left: i * 25),
                  child: Builder(builder: (context) {
                    if (person.avatar != null) {
                      return CircleAvatar(
                        backgroundImage: NetworkImage(person.avatar!),
                      );
                    }

                    return CircleAvatar(
                      backgroundColor: colors[i % colors.length],
                      child: Text(person.publicName[0]),
                    );
                  }),
                );
              },
            ),
          ),
          const VerticalDivider(),
          Center(
            child: Text(people.map((p) => p.publicName).join(', ')),
          )
        ],
      ),
    );
  }
}
