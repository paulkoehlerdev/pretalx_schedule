import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretalx_schedule/api/api.dart';
import 'package:pretalx_schedule/components/error.dart';
import 'package:pretalx_schedule/components/schedulecalendar.dart';
import 'package:pretalx_schedule/cubit/instancecollection.dart';
import 'package:pretalx_schedule/model/instancecollection.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InstanceCollectionCubit, InstanceCollection>(
      builder: (context, coll) {
        final eKey = coll.currentKey;

        if (eKey == null) {
          return const Center(
            child: Text("No Event selected"),
          );
        }

        return FutureBuilder(
          future: Api.loadFullEvent(eKey),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ScheduleCalendar(schedule: snapshot.data!);
            }

            if (snapshot.hasError) {
              return ErrorWithStack(
                error: snapshot.error.toString(),
                stack: snapshot.stackTrace,
              );
            }

            return const Stack(
              children: [
                LinearProgressIndicator(),
                ScheduleCalendar(),
              ],
            );
          },
        );
      },
    );
  }
}
