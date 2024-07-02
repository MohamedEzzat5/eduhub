import 'package:flutter/material.dart';

class CustomGuestBody extends StatelessWidget {
  const CustomGuestBody({
    super.key,
    required this.bgImage,
    required this.bodyWidget,
  });

  final String bgImage;
  final Widget bodyWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(bgImage), fit: BoxFit.fitWidth)),
        child: bodyWidget);
  }
}
