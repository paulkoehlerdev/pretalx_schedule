import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pretalx_schedule/api/api.dart';
import 'package:pretalx_schedule/components/error.dart';
import 'package:pretalx_schedule/model/event.dart';
import 'package:pretalx_schedule/model/instance.dart';

class InstanceDialog extends StatefulWidget {
  final Instance? instance;

  const InstanceDialog({
    super.key,
    this.instance,
  });

  @override
  State<InstanceDialog> createState() => _InstanceDialogState();
}

class _InstanceDialogState extends State<InstanceDialog> {
  late final TextEditingController nameController;
  late final TextEditingController urlController;
  late Instance instance;
  bool loadingEvents = false;
  bool cleanEvents = false;
  Widget? eventErrorWidget = null;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.instance?.name);
    urlController = TextEditingController(text: widget.instance?.url);
    instance =
        widget.instance ?? Instance(name: "", url: "", events: Set<Event>());
  }

  @override
  void dispose() {
    nameController.dispose();
    urlController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.instance != null;

    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          title: Text(isEdit
              ? AppLocalizations.of(context)!.editInstance +
                  widget.instance!.name
              : AppLocalizations.of(context)!.addInstance),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            TextButton(
              onPressed: () {
                saveToInstance();
                if (!cleanEvents) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                    AppLocalizations.of(context)!.needToReloadEventsError,
                  )));
                  return;
                }
                Navigator.of(context).pop(instance);
              },
              child: Text(AppLocalizations.of(context)!.save.toUpperCase()),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...buildInputElements(),
              spacer(),
              Text(AppLocalizations.of(context)!.eventsOfInterest),
              const Divider(),
              buildEventList(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildInputElements() {
    return [
      TextField(
        controller: nameController,
        decoration: InputDecoration(
          labelText: AppLocalizations.of(context)!.name,
          border: const OutlineInputBorder(),
        ),
      ),
      spacer(),
      TextField(
        controller: urlController,
        decoration: InputDecoration(
          labelText: AppLocalizations.of(context)!.url,
          border: const OutlineInputBorder(),
        ),
      ),
      spacer(),
      ElevatedButton(
        child: Text(
          AppLocalizations.of(context)!.loadEvents,
        ),
        onPressed: () async {
          saveToInstance();
          setState(() {
            loadingEvents = true;
            eventErrorWidget = null;
          });
          try {
            instance = await Api.hydrateEventsForInstance(instance);
          } catch (e, st) {
            eventErrorWidget = ErrorWithStack(
              error: e.toString(),
              stack: st,
            );
          }
          setState(() {
            loadingEvents = false;
            cleanEvents = eventErrorWidget == null;
          });
        },
      ),
    ];
  }

  void saveToInstance() {
    setState(() {
      if (instance.url != urlController.text) {
        cleanEvents = false;
      }
      instance = instance.copyWith(
        url: urlController.text,
        name: nameController.text,
      );
    });
  }

  Widget buildEventList() {
    if (loadingEvents) {
      return const LinearProgressIndicator();
    }

    if (eventErrorWidget != null) {
      return eventErrorWidget!;
    }

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: instance.events.map((e) {
            return ListTile(
              title: Text(e.name),
              subtitle: Text(e.slug),
              leading: Checkbox(
                  value: e.visible,
                  onChanged: (bool? value) {
                    setState(() {
                      e.visible = value ?? !e.visible;
                    });
                  }),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget spacer() {
    return const SizedBox(height: 16);
  }
}
