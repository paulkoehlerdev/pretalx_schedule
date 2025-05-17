import 'package:pretalx_schedule/data/repositories/conference/conference.dart';
import 'package:pretalx_schedule/data/repositories/conference/conference_remote.dart';
import 'package:pretalx_schedule/data/services/api/api.dart';
import 'package:pretalx_schedule/data/services/api/api_remote.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> get providers => [
      Provider(create: (context) => RemoteApi() as Api),
      Provider(
          create: (context) => ConferenceRepositoryRemote(
                api: context.read(),
              ) as ConferenceRepository),
    ];
