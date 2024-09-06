import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:permission_handler/permission_handler.dart';

class AppPermissionHandler {
  static Future<void> requestLocation() async {
    PermissionStatus status = await Permission.location.status;
    if (status.isDenied || status.isRestricted || status.isPermanentlyDenied) {
      showPermissionAlertDialog(text: "Allow access to location");
      return;
    }
    throw Exception(
      'Location Permission Status Exception',
    );
  }

  static void showPermissionAlertDialog({required String text}) {
    AlertDialog.adaptive(
      title: const Text("Permission Denied"),
      content: Text(text),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(Get.context!),
            child: const Text("Cancel")),
        TextButton(
            onPressed: () async => await openAppSettings(),
            child: const Text("Open Settings"))
      ],
    );
  }
}
