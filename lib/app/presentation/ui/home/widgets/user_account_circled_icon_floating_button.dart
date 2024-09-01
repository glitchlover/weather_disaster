part of '../home.dart';

class UserAccountCircledIconFloatingButton extends StatelessWidget {
  const UserAccountCircledIconFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const IconData icon = BootstrapIcons.person;

    return const Positioned(
        top: 20, left: 20, child: CircledIconButton(icon: icon));
  }
}
