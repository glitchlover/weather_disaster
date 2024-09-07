import 'package:get/get.dart';
import 'package:weather_disaster/app/presentation/ui/home/controllers/map_view_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapViewController());
  }
}
