import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pretalx_schedule/cubit/instancecollection.dart';
import 'package:pretalx_schedule/model/instancecollection.dart';
import 'package:pretalx_schedule/views/settings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BlocBuilder<InstanceCollectionCubit, InstanceCollection>(
          builder: (BuildContext context, InstanceCollection collection) {
        return ListView(
          children: [
            DrawerHeader(
              child: SvgPicture.asset(
                alignment: Alignment.topLeft,
                fit: BoxFit.scaleDown,
                'assets/logo_inverted.svg',
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            ...buildActionTiles(context),
            ...buildInstanceTiles(context, collection),
            ...buildBottomActionTiles(context),
          ],
        );
      }),
    );
  }

  List<Widget> buildActionTiles(BuildContext context) {
    return [
      ListTile(
        leading: const Icon(Icons.refresh),
        title: Text(AppLocalizations.of(context)!.refresh),
        onTap: () {},
      ),
    ];
  }

  List<Widget> buildBottomActionTiles(BuildContext context) {
    return [
      const Divider(),
      ListTile(
        leading: const Icon(Icons.settings),
        title: Text(AppLocalizations.of(context)!.settings),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Settings(),
            ),
          );
        },
      ),
    ];
  }

  List<Widget> buildInstanceTiles(
    BuildContext context,
    InstanceCollection collection,
  ) {
    if (collection.instances.isEmpty) {
      return [];
    }

    return [
      const Divider(),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              AppLocalizations.of(context)!.events,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Expanded(child: Container())
        ],
      ),
      ...collection.visibleEvents
          .map(
            (i) => RadioListTile(
              value: i.slug,
              groupValue: collection.selectedEventSlug,
              onChanged: (String? value) {
                if (value != null) {
                  context.read<InstanceCollectionCubit>().select(value);
                }
              },
              title: Text(i.name),
              subtitle: Text(i.slug),
            ),
          )
          .toList()
    ];
  }
}
