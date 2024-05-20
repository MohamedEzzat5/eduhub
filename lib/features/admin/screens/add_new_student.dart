import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/features/admin/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/default_button.dart';
import '../../../generated/assets.dart';

class AddNewStudentScreen extends StatefulWidget {
  const AddNewStudentScreen({super.key});

  @override
  State<AddNewStudentScreen> createState() => _AddNewStudentScreenState();
}

class _AddNewStudentScreenState extends State<AddNewStudentScreen> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController sectionController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController religionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffc2c4bf),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: context.width,
                child: Image.asset(Assets.imagesAddStudent,fit: BoxFit.fill,)),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30),)
              ),
              child:   Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAddNewTypeTextField(controller: emailController,label: 'البريد الالكتروني',),
                    const SizedBox(height: 10,),
                    CustomAddNewTypeTextField(controller: passwordController,label: 'كلمه المرور',),
                    const SizedBox(height: 10,),
                    CustomAddNewTypeTextField(controller: nameController,label: 'الاسم',),
                    const SizedBox(height: 10,),
                    CustomAddNewTypeTextField(controller: yearController,label: 'السنة الدراسية',),
                    const SizedBox(height: 10,),
                    CustomAddNewTypeTextField(controller: idController,label: 'الرقم القومي',),
                    const SizedBox(height: 10,),
                    CustomAddNewTypeTextField(controller: sectionController,label: 'القسم',),
                    const SizedBox(height: 10,),
                    CustomAddNewTypeTextField(controller: addressController,label: 'العنوان',),
                    const SizedBox(height: 10,),
                    CustomAddNewTypeTextField(controller: genderController,label: 'النوع',),
                    const SizedBox(height: 10,),
                    CustomAddNewTypeTextField(controller: religionController,label: 'الديانه',),
                    const SizedBox(height: 10,),
                    CustomMaterialButton(onPressed: (){}, text: 'اضافه',fontWeight: FontWeight.w600,fontSize: 20,),


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

