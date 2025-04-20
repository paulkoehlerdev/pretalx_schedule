import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pretalx_schedule/components/scaffold.dart';
import 'package:pretalx_schedule/views/favorite.dart';
import 'package:pretalx_schedule/views/schedule.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      pages: [
        NavigationBarPage(
          icon: Icons.calendar_today_outlined,
          label: AppLocalizations.of(context)!.schedule,
          selectedIcon: Icons.calendar_today,
          content: const ScheduleView(),
        ),
        NavigationBarPage(
          icon: Icons.star_outline,
          label: AppLocalizations.of(context)!.favorites,
          selectedIcon: Icons.star,
          content: const FavoriteView(),
        ),
      ],
    );
  }
}
