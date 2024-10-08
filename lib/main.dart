import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_disaster/app/presentation/shared/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather Disaster",
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.initial,
    );
  }
}
