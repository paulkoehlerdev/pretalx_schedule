import 'package:pretalx_schedule/data/repositories/event/event.dart';
import 'package:pretalx_schedule/data/repositories/event/event_remote.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> get providers => [
      Provider(create: (context) => EventRepositoryRemote() as EventRepository),
    ];
