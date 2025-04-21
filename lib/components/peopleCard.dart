import 'package:flutter/material.dart';
import 'package:pretalx_schedule/api/models/schedule.dart';

class PeopleCard extends StatelessWidget {
  final List<ApiPerson> people;

  const PeopleCard({super.key, required this.people});

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
                final double radius = 15;

                return Padding(
                  padding: EdgeInsets.only(left: i * 20),
                  child: Builder(builder: (context) {
                    if (person.avatar != null) {
                      return CircleAvatar(
                        radius: radius,
                        backgroundImage: NetworkImage(person.avatar!),
                      );
                    }

                    return CircleAvatar(
                      radius: radius,
                      backgroundColor: colors[i % colors.length],
                      child: Text(person.publicName[0]),
                    );
                  }),
                );
              },
            ),
          ),
          const VerticalDivider(
            width: 5,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                people.map((p) => p.publicName).join(', '),
                overflow: TextOverflow.fade,
                softWrap: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}
