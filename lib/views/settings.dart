import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pretalx_schedule/components/settings/instanceDialog.dart';
import 'package:pretalx_schedule/cubit/instancecollection.dart';
import 'package:pretalx_schedule/model/instance.dart';
import 'package:pretalx_schedule/model/instancecollection.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settings),
      ),
      body: BlocBuilder<InstanceCollectionCubit, InstanceCollection>(
          builder: (context, collection) {
        return ListView(
          children: [
            const Divider(),
            ...buildCollectionListTiles(context, collection),
            const Divider(),
          ],
        );
      }),
    );
  }

  List<Widget> buildCollectionListTiles(
      BuildContext context, InstanceCollection collection) {
    return [
      ListTile(
        title: Text(AppLocalizations.of(context)!.instances),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                showInstanceDialog(context);
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      ...collection.instances.map(
        (i) => ListTile(
          title: Text(i.name),
          subtitle: Text(i.url),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  showInstanceDialog(context, oldInstance: i);
                },
                icon: const Icon(Icons.edit),
              ),
              IconButton(
                onPressed: () {
                  context.read<InstanceCollectionCubit>().remove(i.url);
                },
                icon: const Icon(Icons.delete_forever),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  void showInstanceDialog(BuildContext context,
      {Instance? oldInstance = null}) async {
    var instance = await showDialog<Instance>(
        context: context,
        builder: (context) {
          return InstanceDialog(
            instance: oldInstance,
          );
        });

    if (instance == null) {
      return;
    }

    context.read<InstanceCollectionCubit>().update(oldInstance, instance);
  }
}
