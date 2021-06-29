import 'package:flutter/material.dart';

// icon button with text underneath the icon
class CustomIconButton extends StatelessWidget {
  final Icon icon;
  final Text? label;
  final void Function()? onTap;

  const CustomIconButton({
    Key? key,
    required this.icon,
    this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null ? onTap! : () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [icon, label != null ? label! : Container()],
      ),
    );
  }
}
