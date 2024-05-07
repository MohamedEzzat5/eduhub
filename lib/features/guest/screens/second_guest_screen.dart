import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/app_strings.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/custom_app_bar.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_guest_body.dart';

class SecondGuestScreen extends StatelessWidget {
  const SecondGuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 50,
        actionTitle: 'Next',
        actionOnPress: () {
          Navigator.pushNamed(context, Routes.thirdGuestScreen);
        },
      ),
      body: CustomGuestBody(
        bgImage: Assets.imagesGuest2,
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(AppStrings.secondGuestText1, style: Styles.textStyle24.copyWith(color: Colors.black),textDirection: TextDirection.rtl,)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 60),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color(0xffE1E3E8),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    AppStrings.secondGuestText2,
                    style: Styles.textStyle20.copyWith(color: Colors.black,fontWeight: FontWeight.w600),
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    AppStrings.secondGuestText3,
                    style: Styles.textStyle18.copyWith(color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(right: 60),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color(0xffE1E3E8),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    AppStrings.secondGuestText4,
                    style: Styles.textStyle20.copyWith(color: Colors.black,fontWeight: FontWeight.w600),
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    AppStrings.secondGuestText5,
                    style: Styles.textStyle18.copyWith(color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(left: 60),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color(0xffE1E3E8),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    AppStrings.secondGuestText6,
                    style: Styles.textStyle20.copyWith(color: Colors.black,fontWeight: FontWeight.w600),
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    AppStrings.secondGuestText7,
                    style: Styles.textStyle18.copyWith(color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            const Spacer(flex: 5,),
          ],
        ),
      ),
    );
  }
}
