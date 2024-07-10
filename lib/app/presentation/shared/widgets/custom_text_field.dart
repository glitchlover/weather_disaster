import 'package:flutter/material.dart';
import 'package:weather_disaster/app/presentation/shared/theme/sizes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.textFieldHeight,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(
            vertical: AppSizes.paddingSmall,
            horizontal: AppSizes.paddingMedium,
          ),
          border: const OutlineInputBorder(),
        ), 
      ),
    );
  }
}
