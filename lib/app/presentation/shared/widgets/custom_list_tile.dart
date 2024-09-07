import 'package:flutter/material.dart';
import 'package:weather_disaster/core/constants/sizes.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: AppSizes.iconMedium),
      title: Text(title, style: const TextStyle(fontSize: AppSizes.textMedium)),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: AppSizes.textSmall)),
      onTap: onTap,
    );
  }
}
