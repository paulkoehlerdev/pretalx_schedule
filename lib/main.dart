import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretalx_schedule/api/export.dart';
import 'package:pretalx_schedule/views/schedule.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    RestClient client =
        RestClient(Dio(), baseUrl: 'https://cfp.eh22.easterhegg.eu');
    String event = 'eh22';

    return MaterialApp(
      title: 'Pretalx Schedule',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(0xFF, 0xc6, 0x25, 0x7d)),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: ScheduleView(client: client.client, event: event),
    );
  }
}
