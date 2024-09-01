part of '../home.dart';

class WeatherAndStatisticsFloatingButton extends StatelessWidget {
  const WeatherAndStatisticsFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        top: 20,
        left: 20 + 25 + AppSizes.marginSmall,
        child: CircledIconButton(icon: BootstrapIcons.activity));
  }
}
