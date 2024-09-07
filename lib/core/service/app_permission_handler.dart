import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/route_manager.dart';
import 'package:weather_disaster/packages/logger/logger.dart';

class AppPermissionHandler {
  static Future<bool> requestLocation() async {
    try {
      Flog.mark(""); 
      LocationPermission permission = await Geolocator.requestPermission();
      bool permissionGranted = permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse;
      Flog.info(permission);
      if (permissionGranted) return true;

      await _showPermissionAlertDialog(text: "Location Access Permission");
      return permissionGranted;
    } on PlatformException catch (e) {
      Flog.error("PlatformException: $e");
    } catch (e) {
      Flog.error(e);
    }
    return false;
  }

  static Future<void> _showPermissionAlertDialog({required String text}) {
    return showDialog(
      context: Get.context!,
      builder: (context) => AlertDialog.adaptive(
        title: const Text("Permission Denied"),
        content: Text(text),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(Get.context!),
              child: const Text("Cancel")),
          TextButton(
              onPressed: () async => await Geolocator.openLocationSettings(),
              child: const Text("Open Settings"))
        ],
      ),
    );
  }
}
