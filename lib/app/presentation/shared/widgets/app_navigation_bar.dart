
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:weather_disaster/app/presentation/shared/theme/colors.dart';
import 'package:weather_disaster/app/presentation/shared/widgets/app_navigation_icon.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: ResponsiveBuilder(
          builder: (BuildContext context, SizingInformation sizingInformation) {
        return Container(
          width: sizingInformation.screenSize.width,
          height: 60,
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 6.0,
              offset: Offset(0, 3),
            ),
          ]),
          child: _buildNavBar(),
        );
      }),
    );
  }

  Widget _buildNavBar() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppNavigationIcon(
            icon: LineIcons.bell,
            color: AppColors.darkYellow,
            onPressed: () {},
          ),
          AppNavigationIcon(
            icon: LineIcons.newspaper,
            color: AppColors.darkGreen,
            onPressed: () {},
          ),
          AppNavigationIcon(
            icon: LineIcons.map,
            color: AppColors.darkBlue,
            onPressed: () {},
          ),
          AppNavigationIcon(
            icon: LineIcons.handHoldingHeart,
            color: AppColors.darkRed,
            onPressed: () {},
          ),
          AppNavigationIcon(
              icon: LineIcons.cog, color: Colors.grey, onPressed: () {}),
        ],
      ),
    );
  }
}
