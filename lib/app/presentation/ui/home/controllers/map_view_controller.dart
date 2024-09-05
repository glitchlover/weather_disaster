import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:permission_handler/permission_handler.dart';

class MapViewController extends GetxController {
  MapController mapController = MapController();
  Rx<LatLng?> currentLocation = null.obs;
  bool permissionGranted = false;

  @override
  void onInit() {
    _requestLocationPermission();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  
  Future<void> _requestLocationPermission() async{
    if (await Permission.location.request().isGranted){
      
    }
  }
}
