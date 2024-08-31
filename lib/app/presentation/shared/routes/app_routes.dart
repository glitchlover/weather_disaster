import 'package:get/route_manager.dart';
import 'package:weather_disaster/app/presentation/shared/routes/home_screen_route.dart';

class AppRoutes {
  AppRoutes._();
  static const initial = HomeScreenRoute.path;

  static List<GetPage> pages = [
    ...[HomeScreenRoute().page],
  ];
}
