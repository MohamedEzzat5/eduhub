import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/gaps.dart';
 import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
class AdminEventScreen extends StatefulWidget {
  const AdminEventScreen({super.key});

  @override
  State<AdminEventScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<AdminEventScreen> {

  final TextEditingController doctorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                color: kPrimaryColor,
                child:  Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap:()=> GoRouter.of(context).pop(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),
                              Text('فعاليات',style: Styles.textStyle24.copyWith(color: Colors.white),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Image.asset(Assets.imagesStars,alignment: Alignment.center,),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30),)
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(15.r),
                              margin:   EdgeInsets.all(15.r),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(color: Colors.grey),
                              ),
                              child: Column(
                                children: [
                                  Gaps.vGap16,

                                ],
                              ),
                            );
                          },),
                      ),

                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}


