import 'package:flutter/material.dart';
import 'package:weather_disaster/app/presentation/shared/theme/colors.dart';
import 'package:weather_disaster/app/presentation/shared/widgets/sklton_button.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SkltonButton(
        text: text,
        onPressed: onPressed,
        color: AppColors.buttonPrimary,
        textColor: AppColors.buttonPrimaryText);
  }
}
