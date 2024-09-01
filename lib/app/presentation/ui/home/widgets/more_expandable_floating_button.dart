part of '../home.dart';

class MoreExpandableFloatingButton extends StatefulWidget {
  const MoreExpandableFloatingButton({
    super.key,
  });

  @override
  State<MoreExpandableFloatingButton> createState() =>
      _MoreExpandableFloatingButtonState();
}

class _MoreExpandableFloatingButtonState
    extends State<MoreExpandableFloatingButton> {
  bool _isExpanded = false;

  void _toggleButton() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20 + 25 + AppSizes.marginSmall,
      right: 20,
      child: Column(
        children: [
          CircledIconButton(icon: BootstrapIcons.three_dots, onTap: _toggleButton,),
          if (_isExpanded) ...[
            const SizedBox(height: AppSizes.marginSmall,),
            const CircledIconButton(icon: BootstrapIcons.people),
            const SizedBox(height: AppSizes.marginSmall,),
            const CircledIconButton(icon: BootstrapIcons.bag_heart),
            const SizedBox(height: AppSizes.marginSmall,),
            const CircledIconButton(icon: BootstrapIcons.heart_pulse),
            const SizedBox(height: AppSizes.marginSmall,),
            const CircledIconButton(icon: BootstrapIcons.building_check),
          ],
        ],
      ),
    );
  }
}
