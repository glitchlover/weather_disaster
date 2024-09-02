part of '../home.dart';

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
        return SizedBox(
          width: sizingInformation.screenSize.width,
          height: 60,
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
            icon: LineIcons.cog,
            color: Colors.grey, 
            onPressed: () {}
          ),
        ],
      ),
    );
  }
}
