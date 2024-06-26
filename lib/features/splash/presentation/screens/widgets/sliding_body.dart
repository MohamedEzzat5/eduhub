import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/app_strings.dart';
import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/default_button.dart';
import 'package:faculty_app/core/widgets/default_outlined_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constance.dart';

class SlidingBody extends StatelessWidget {
  const SlidingBody({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) => SlideTransition(
        position: slidingAnimation,
        child: Center(
          child: Column(
            children: [
              const Text(
                AppStrings.welcome,
                textAlign: TextAlign.center,
                style: Styles.textStyle36,
              ),
              const Text(
                AppStrings.splashBody,
                textAlign: TextAlign.center,
                style: Styles.textStyle18,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomMaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(AppRouter.loginScreen);
                },
                text: AppStrings.login,
                width: context.width * 0.75,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultOutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRouter.firstGuestScreen);
                },
                height: 57,
                width: context.width * 0.40,
                radius: 40,
                child: Text(
                  AppStrings.guest,
                  style: Styles.textStyle20.copyWith(color: hint),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
