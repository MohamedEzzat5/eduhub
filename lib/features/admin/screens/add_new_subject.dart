import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/features/admin/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/default_button.dart';
import '../../../generated/assets.dart';

class AdminAddNewSubjectScreen extends StatefulWidget {
  const AdminAddNewSubjectScreen({super.key});

  @override
  State<AdminAddNewSubjectScreen> createState() =>
      _AdminAddNewSubjectScreenState();
}

class _AdminAddNewSubjectScreenState extends State<AdminAddNewSubjectScreen> {
  final TextEditingController codeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController sectionController = TextEditingController();

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
                  Assets.imagesSubject,
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
                      height: 10,
                    ),
                    CustomAddNewTypeTextField(
                      controller: nameController,
                      label: 'كود الماده',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomAddNewTypeTextField(
                      controller: codeController,
                      label: 'اسم الماده',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomAddNewTypeTextField(
                      controller: lastController,
                      label: 'المواد المعتمده عليها',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomAddNewTypeTextField(
                      controller: yearController,
                      label: 'الفرقه',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomAddNewTypeTextField(
                      controller: sectionController,
                      label: 'القسم',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: CustomMaterialButton(
                      onPressed: () {},
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
