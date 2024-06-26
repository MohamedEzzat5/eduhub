import 'package:faculty_app/core/widgets/tap_effect.dart';
import 'package:flutter/material.dart';
import '../utils/constance.dart';
import 'default_text.dart';

class CustomMaterialButton extends StatelessWidget {
  final bool isUpperCase;
  final bool loading;
  final double width;
  final double height;
  final double radius;
  final Color background;
  final Color textColor;
  final Color? splashColor;
  final VoidCallback onPressed; // voidCallback = void Function()
  final String text;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final double? elevation;
  final double? textScaleFactor;
  final FontWeight? fontWeight;

  const CustomMaterialButton({
    super.key,
    this.textColor = Colors.white,
    required this.onPressed,
    required this.text,
    this.width = double.infinity,
    this.isUpperCase = false,
    this.background = kPrimaryColor,
    this.radius = 40,
    this.splashColor,
    this.padding,
    this.height = 57,
    this.fontSize,
    this.textScaleFactor,
    this.fontWeight,
    this.elevation = 0,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return TapEffect(
      isClickable: !loading,
      onClick: loading ? null : onPressed,
      child: SizedBox(
        height: height,
        width: width,
        child: MaterialButton(
          padding: padding,
          elevation: elevation,
          splashColor: splashColor,
          color: background,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius))),
          onPressed: onPressed,
          child: DefaultText(
            text: isUpperCase ? text.toUpperCase() : text,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textScaleFactor: textScaleFactor,
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
