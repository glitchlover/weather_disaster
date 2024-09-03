part of '../home.dart';

class MapFocusFloatingButton extends StatelessWidget {
  const MapFocusFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 20,
      bottom: 20 + 60,
      child: CircledIconButton(icon: LineIcons.eye),
    );
  }
}
