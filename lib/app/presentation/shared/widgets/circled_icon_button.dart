import 'package:flutter/material.dart';
import 'package:weather_disaster/app/presentation/shared/theme/colors.dart';

class CircledIconButton extends StatelessWidget {
  const CircledIconButton({
    super.key,
    this.onTap,
    required this.icon,  
  });

  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 25,
          width: 25,
          decoration: const BoxDecoration(
            color: AppColors.buttonPrimary,
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 6.0,
                offset: Offset(0, 3),
              ),
            ],
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: AppColors.buttonPrimaryText,
            size: 13,
          )),
    );
  }
}
