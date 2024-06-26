import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/text_styles.dart';
import 'gaps.dart';

class CustomTextIcon extends StatelessWidget {
  const CustomTextIcon({
    this.whiteColor = false,
    super.key,
    required this.title,
  });
  final String title;
  final bool whiteColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 30.r,
            color: whiteColor ? Colors.white : Colors.black,
          ),
        ),
        Gaps.hGap10,
        Text(
          title,
          style: TextStyles.bold20().copyWith(
            color: whiteColor ? Colors.white : Colors.black,
          ),
        ),
      ],
    );
  }
}
