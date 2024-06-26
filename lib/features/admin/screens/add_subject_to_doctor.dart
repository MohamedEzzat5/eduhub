import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/features/admin/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/default_button.dart';
import '../../../generated/assets.dart';

class AdminAddSubjectToDoctorScreen extends StatefulWidget {
  const AdminAddSubjectToDoctorScreen({super.key});

  @override
  State<AdminAddSubjectToDoctorScreen> createState() =>
      _AdminAddSubjectToDoctorScreenState();
}

class _AdminAddSubjectToDoctorScreenState
    extends State<AdminAddSubjectToDoctorScreen> {
  final TextEditingController subjectNameController = TextEditingController();
  final TextEditingController doctorIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc2c4bf),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: context.height * 0.4,
                width: context.width,
                child: Image.asset(
                  Assets.imagesAddSubToDoctor,
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
                      label: 'اسم الماده',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomAddNewTypeTextField(
                      controller: doctorIdController,
                      label: 'id الدكتور',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: CustomMaterialButton(
                      onPressed: () {
                        Navigator.of(context).pop();
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
