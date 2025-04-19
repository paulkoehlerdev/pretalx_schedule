import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pretalx_schedule/cubit/instancecollection.dart';
import 'package:pretalx_schedule/model/instancecollection.dart';

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
      ListTile(
        leading: const Icon(Icons.add_link),
        title: Text(AppLocalizations.of(context)!.addInstance),
        onTap: () {},
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
      Padding(
        padding: const EdgeInsets.all(12),
        child: Text(AppLocalizations.of(context)!.instances,
            style: Theme.of(context).textTheme.titleSmall),
      ),
      ...collection.instances.map((i) => ListTile(
            title: Text(i.name),
          ))
    ];
  }
}
