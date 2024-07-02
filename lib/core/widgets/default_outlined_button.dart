import 'package:flutter/material.dart';

import '../utils/constance.dart';

class DefaultOutlinedButton extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final VoidCallback onPressed; // voidCallback = void Function()
  final Widget child;
  final Color borderColor;

  const DefaultOutlinedButton({
    super.key,
    required this.onPressed,
    this.width = double.infinity,
    this.radius = 8,
    required this.child,
    this.height = 50,
    this.borderColor = hint,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
            side: BorderSide(width: 2, color: borderColor),
          ),
          onPressed: onPressed,
          child: child),
    );
  }
}
