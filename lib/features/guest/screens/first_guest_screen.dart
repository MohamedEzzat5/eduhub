import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/app_strings.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/custom_app_bar.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_guest_body.dart';

class FirstGuestScreen extends StatelessWidget {
  const FirstGuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 50,
        actionTitle: 'Next',
        actionOnPress: () {
          Navigator.pushNamed(context, AppRouter.secondGuestScreen);
        },
      ),
      body: CustomGuestBody(
        bgImage: Assets.imagesGuest1,
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 4,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  AppStrings.firstGuestText1,
                  style: Styles.textStyle24.copyWith(color: Colors.black),
                  textDirection: TextDirection.rtl,
                )),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.firstGuestText2,
                    style: Styles.textStyle18.copyWith(color: Colors.black),
                    textDirection: TextDirection.rtl,
                  )),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.only(right: 60),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color(0xffD1D9C3),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Text(
                AppStrings.firstGuestText3,
                style: Styles.textStyle18.copyWith(color: Colors.black),
                textDirection: TextDirection.rtl,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: Color(0xffFBDB9D),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    AppStrings.firstGuestText4,
                    textDirection: TextDirection.rtl,
                    style: Styles.textStyle16.copyWith(color: Colors.black),
                  ),
                  Image.asset(
                    Assets.imagesFace,
                    height: 60,
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
