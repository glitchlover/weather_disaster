import 'package:flutter/material.dart';

class AppNavigationIcon extends StatelessWidget {
  const AppNavigationIcon({
    super.key,
    this.onPressed,
    required this.icon,
    required this.color,
  });

  final void Function()? onPressed;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: color,
      splashRadius: 70,
      onPressed: onPressed,
      icon: Icon(
        size: 25,
        icon,
        color: color,
      ),
    );
  }
}
