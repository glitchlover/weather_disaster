import 'package:get/get.dart';
import 'package:weather_disaster/app/presentation/ui/home/home.dart';

class HomeScreenRoute {
  static const String path = "/home";

  GetPage page = GetPage(
    name: path,
    page: () => const Home(),
    // binding: HomeBindings()
  );
}
