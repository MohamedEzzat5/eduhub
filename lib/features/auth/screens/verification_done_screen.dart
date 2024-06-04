import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/default_button.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerificationDoneScreen extends StatelessWidget {
  const VerificationDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                  width: context.width,
                  child: Image.asset(
                    Assets.imagesAuthImage,
                    fit: BoxFit.cover,
                  ))),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Text(
                        'Verification Done',
                        style: Styles.textStyle36.copyWith(color: kPrimaryColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: kPrimaryColor,
                        ),
                        child: const Center(
                          child: Icon(Icons.done_rounded,size: 60,color: Colors.white,),
                        ),
                      ),

                      const SizedBox(
                        height: 40,
                      ),
                      CustomMaterialButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.resetPasswordScreen);
                        },
                        text: 'Get Started',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
