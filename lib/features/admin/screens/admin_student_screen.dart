import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/default_form_field.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../../config/routes/app_routes.dart';

class AdminStudentScreen extends StatefulWidget {
  const AdminStudentScreen({super.key});

  @override
  State<AdminStudentScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<AdminStudentScreen> {
  final TextEditingController doctorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text('الطالب'),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            color: kPrimaryColor,
            child: Image.asset(
              Assets.imagesStars,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRouter.adminAddNewStudentScreen);
                            },
                            icon: const Icon(
                              Icons.add_comment_rounded,
                              size: 28,
                            ),
                            color: kPrimaryColor,
                          ),
                        )),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 50,
                            width: double.infinity,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xffF5F5F5)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'ahmed@gmail.com',
                                  style: Styles.textStyle18,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: kPrimaryColor,
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: kPrimaryColor,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
