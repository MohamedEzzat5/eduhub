 
import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/widgets/custom_app_bar.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_guest_body.dart';

class FourthGuestScreen extends StatelessWidget {
  const FourthGuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 50,
        actionTitle: 'Exit',
        actionOnPress: () {
          Navigator.pushReplacementNamed(context, Routes.initialRoute);
        },
      ),
      body: const CustomGuestBody(
        bgImage: Assets.imagesGuest4,
        bodyWidget: SizedBox()
      ),
    );
  }
}
