import 'package:flutter/material.dart';
import 'package:weather_disaster/app/presentation/shared/theme/colors.dart';
import 'package:weather_disaster/app/presentation/shared/theme/sizes.dart';

import 'custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.scaffoldPrimary,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: AppSizes.textLarge,
              ),
            ),
          ),
          CustomListTile(title: 'Item 1', subtitle: 'Subtitle 1', icon: Icons.ac_unit, onTap: () {
            Navigator.pop(context);
          }),
          CustomListTile(title: 'Item 2', subtitle: 'Subtitle 2', icon: Icons.access_alarm, onTap: () {
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
