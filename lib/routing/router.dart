import 'package:go_router/go_router.dart';
import 'package:pretalx_schedule/routing/routes.dart';
import 'package:pretalx_schedule/ui/schedule/viewmodel/schedule_viewmodel.dart';
import 'package:pretalx_schedule/ui/schedule/widgets/schedule_screen.dart';

GoRouter router() => GoRouter(
      initialLocation: Routes.schedule,
      routes: [
        GoRoute(
          path: Routes.schedule,
          builder: (context, state) => ScheduleScreen(
            viewModel: ScheduleViewModel(),
          ),
        )
      ],
    );
