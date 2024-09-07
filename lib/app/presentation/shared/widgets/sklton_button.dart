import 'package:flutter/material.dart';
import 'package:weather_disaster/core/constants/sizes.dart';

class SkltonButton extends StatelessWidget {
  const SkltonButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textColor,
    this.icon,
  });

  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.buttonHeight,
      width: AppSizes.buttonWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: textColor,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? Container(),
            Text(
              text,
              style: const TextStyle(fontSize: AppSizes.textMedium),
            ),
          ],
        ),
      ),
    );
  }
}
