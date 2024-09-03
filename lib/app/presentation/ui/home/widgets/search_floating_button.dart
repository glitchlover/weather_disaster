part of '../home.dart';

class SearchFloatingButton extends StatelessWidget {
  const SearchFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        top: 20,
        left: 20 + (25 + AppSizes.marginSmall) * 2,
        child: CircledIconButton(icon: LineIcons.search));
  }
}
