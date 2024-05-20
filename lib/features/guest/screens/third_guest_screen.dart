
import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/app_strings.dart';
import 'package:faculty_app/core/widgets/custom_app_bar.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/style.dart';
import '../widgets/custom_guest_body.dart';

class ThirdGuestScreen extends StatelessWidget {
  const ThirdGuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 50,
        actionTitle: 'Next',
        actionOnPress: () {
          GoRouter.of(context).push(AppRouter.fourthGuestScreen);

        },
      ),
      body: CustomGuestBody(
        bgImage: Assets.imagesGuest3,
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 2,),
            Transform.rotate(
              angle: 0.1,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.thirdGuestText1,
                      style: Styles.textStyle20.copyWith(color: Colors.black,fontWeight: FontWeight.w600),
                      textDirection: TextDirection.rtl,
                    ),
                    Text(
                      AppStrings.thirdGuestText2,
                      style: Styles.textStyle18.copyWith(color: Colors.black),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 3,),
            Transform.rotate(
              angle: -0.1,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.thirdGuestText3,
                      style: Styles.textStyle20.copyWith(color: Colors.black,fontWeight: FontWeight.w600),
                      textDirection: TextDirection.rtl,
                    ),
                    Text(
                      AppStrings.thirdGuestText4,
                      style: Styles.textStyle18.copyWith(color: Colors.black),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 5,),

          ],
        ),
      ),
    );
  }
}
