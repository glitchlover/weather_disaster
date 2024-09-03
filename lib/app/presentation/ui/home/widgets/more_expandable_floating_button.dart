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
          CircledIconButton(icon: LineIcons.horizontalEllipsis, onTap: _toggleButton,),
          if (_isExpanded) ...[
            const SizedBox(height: AppSizes.marginSmall,),
            const CircledIconButton(icon: LineIcons.alternateMapMarker),
            const SizedBox(height: AppSizes.marginSmall,),
            const CircledIconButton(icon: LineIcons.fruitApple),
            const SizedBox(height: AppSizes.marginSmall,),
            const CircledIconButton(icon: LineIcons.medicalClinic),
            const SizedBox(height: AppSizes.marginSmall,),
            const CircledIconButton(icon: LineIcons.home),
          ],
        ],
      ),
    );
  }
}
