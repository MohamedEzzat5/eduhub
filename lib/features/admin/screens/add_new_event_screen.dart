import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/widgets/gaps.dart';
import 'package:faculty_app/features/admin/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/text_styles.dart';
import '../../../core/widgets/default_button.dart';
import '../../../generated/assets.dart';

class AdminAddNewEventScreen extends StatefulWidget {
  const AdminAddNewEventScreen({super.key});

  @override
  State<AdminAddNewEventScreen> createState() => _AdminAddNewEventScreenState();
}

class _AdminAddNewEventScreenState extends State<AdminAddNewEventScreen> {
  final TextEditingController subjectNameController = TextEditingController();
  final TextEditingController doctorIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade800,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: context.height * 0.4,
                width: context.width,
                child: Image.asset(
                  Assets.imagesEvent,
                  fit: BoxFit.fill,
                )),
            Container(
              height: context.height * 0.6,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    CustomAddNewTypeTextField(
                      controller: subjectNameController,
                      label: 'الفاعليه',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomAddNewTypeTextField(
                      controller: doctorIdController,
                      label: 'التفاصيل',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomAddNewTypeTextField(
                      controller: doctorIdController,
                      label: 'التوقيت',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.cloud_upload_rounded,
                          size: 40.r,
                          color: kPrimaryColor,
                        ),
                        Gaps.hGap16,
                        Text(
                          'اضافه صوره',
                          style: TextStyles.semiBold14(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: CustomMaterialButton(
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                      text: 'تم',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      width: context.width * 0.4,
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
