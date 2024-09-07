import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:weather_disaster/core/service/app_permission_handler.dart';

class MapViewController extends GetxController {
  MapController mapController = MapController();
  LatLng? currentLocation;

  @override
  void onInit() async {
    await _findCurrentLocation();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  Future<LatLng?> _findCurrentLocation() async {
    // Check and request location permission if not granted
    if (!await AppPermissionHandler.requestLocation()) return null;

    // Get the current position
    Position position = await Geolocator.getCurrentPosition();

    // Update the current location and move the map
    currentLocation = LatLng(position.latitude, position.longitude);
    mapController.move(currentLocation!, 15.0);

    // Listen to position updates and update the map accordingly
    Geolocator.getPositionStream(
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
    ).listen((Position position) {
      currentLocation = LatLng(position.latitude, position.longitude);
      mapController.move(currentLocation!, 15.0);
    });

    return currentLocation!;
  }
}
