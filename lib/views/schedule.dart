import 'package:flutter/material.dart';
import 'package:pretalx_schedule/api/export.dart';
import 'package:pretalx_schedule/components/error.dart';

class ScheduleView extends StatelessWidget {
  final ClientClient client;
  final String event;

  const ScheduleView({super.key, required this.client, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: loadTalks(), builder: buildListView),
    );
  }

  Widget buildListView(BuildContext context, AsyncSnapshot<Talks> snapshot) {
    if (snapshot.hasError) {
      debugPrintStack(
          stackTrace: snapshot.stackTrace, label: snapshot.error.toString());
      return Center(
        child: ErrorWithStack(
          error: snapshot.error.toString(),
          stack: snapshot.stackTrace,
        ),
      );
    }

    if (!snapshot.hasData) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    var talks = snapshot.data!;
    return ListView.builder(
      itemBuilder: (context, n) {
        var talk = talks.results[n];
        return ListTile(
          title: Text(talk.title),
          subtitle:
              Text(talk.speakers?.map((e) => e.name).join(',') ?? "unknown"),
        );
      },
      itemCount: talks.results.length,
    );
  }

  Future<Talks> loadTalks() => client.getApiEventsEventTalks(event: event);
}
