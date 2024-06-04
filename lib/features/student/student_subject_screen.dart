import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../config/routes/app_routes.dart';

class StudentSubjectScreen extends StatefulWidget {
  const StudentSubjectScreen({super.key});

  @override
  State<StudentSubjectScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<StudentSubjectScreen> {

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
                              Text('المواد',style: Styles.textStyle24.copyWith(color: Colors.white),),
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
              flex: 6,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30),)
                  ),
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      List<String> subjects = ['التعرف على الكلام','برمجة الألعاب','النظم الموزعه','الكائنات الالية','استرجاع المعلومات','معالجة اللغات الطبيعيه',];
                      return GestureDetector(
                        onTap: (){
                          GoRouter.of(context).push(AppRouter.studentCurrentSubjectScreen);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: double.infinity,
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: kPrimaryColor
                          ),
                          child: Text(subjects[index],style: Styles.textStyle20.copyWith(color: Colors.white,fontWeight: FontWeight.w600),
                            textDirection: TextDirection.rtl,textAlign: TextAlign.right,),
                        ),
                      );
                    },)
              ),
            ),
          ],
        ),
      ),
    );
  }
}


