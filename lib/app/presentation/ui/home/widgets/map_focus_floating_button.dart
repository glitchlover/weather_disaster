part of home;

class MapFocusFloatingButton extends StatelessWidget {
  const MapFocusFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 20,
      bottom: 20,
      child: CircledIconButton(icon: BootstrapIcons.zoom_in),
    );
  }
}
