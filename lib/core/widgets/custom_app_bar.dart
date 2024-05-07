import 'package:flutter/material.dart';

import '../utils/constance.dart';
import '../utils/style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.height,
    required this.actionTitle,
    this.showAction = true,
    required this.actionOnPress,
    this.title = '',
  });

  final double height;
  final String actionTitle, title;
  final bool showAction;
  final VoidCallback actionOnPress;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(title),
        titleTextStyle: Styles.textStyle18,
        backgroundColor: kPrimaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 3,
        toolbarHeight: height,
        actions: [
          showAction
              ? GestureDetector(
                  onTap: actionOnPress,
                  child: Row(
                    children: [
                      Text(
                        actionTitle,
                        style: Styles.textStyle20.copyWith(color: Colors.white),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
        ]);
  }
}
