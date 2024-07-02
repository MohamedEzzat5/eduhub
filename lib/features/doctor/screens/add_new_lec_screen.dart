import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/widgets/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/default_button.dart';
import '../../../generated/assets.dart';
import '../../admin/widgets/custom_text_field.dart';

class AddNewLecScreen extends StatefulWidget {
  const AddNewLecScreen({super.key});

  @override
  State<AddNewLecScreen> createState() => _AddNewLecScreenState();
}

class _AddNewLecScreenState extends State<AddNewLecScreen> {
  final TextEditingController codeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc2c4bf),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: context.height * 0.6,
                width: context.width,
                child: Image.asset(
                  Assets.imagesSubject,
                  fit: BoxFit.fill,
                )),
            Container(
              height: context.height * 0.4,
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
                      height: 10,
                    ),
                    CustomAddNewTypeTextField(
                      controller: nameController,
                      label: 'المحاضرة',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomAddNewTypeTextField(
                      controller: codeController,
                      label: 'عنوان المحاضرة',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Icon(
                      Icons.cloud_upload,
                      size: 50.r,
                      color: kPrimaryColor,
                    )),
                    const Spacer(),
                    Center(
                        child: CustomMaterialButton(
                      onPressed: () {},
                      radius: 5,
                      text: 'تم',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      width: context.width * 0.4,
                    )),
                    Gaps.vGap12
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
