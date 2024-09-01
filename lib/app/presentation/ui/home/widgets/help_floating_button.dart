part of '../home.dart';

class HelpFloatingButton extends StatelessWidget {
  const HelpFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        top: 20,
        right: 20,
        child: CircledIconButton(icon: BootstrapIcons.question),
    );
  }
}
