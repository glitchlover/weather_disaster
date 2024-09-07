library home;

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:weather_disaster/core/constants/sizes.dart';
import 'package:weather_disaster/app/presentation/shared/widgets/app_navigation_bar.dart';
import 'package:weather_disaster/app/presentation/shared/widgets/circled_icon_button.dart';

import 'widgets/map_view.dart';

part 'widgets/help_floating_button.dart';
part 'widgets/map_focus_floating_button.dart';
part 'widgets/more_expandable_floating_button.dart';
part 'widgets/search_floating_button.dart';
part 'widgets/user_account_circled_icon_floating_button.dart';
part 'widgets/weather_and_statistics_floating_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(builder: (context, sizing) {
        return const Stack(children: [
          MapView(),
          UserAccountCircledIconFloatingButton(),
          WeatherAndStatisticsFloatingButton(),
          SearchFloatingButton(),
          HelpFloatingButton(),
          MoreExpandableFloatingButton(),
          MapFocusFloatingButton(),
          AppNavigationBar(),
        ]);
      }),
    );
  }
}
