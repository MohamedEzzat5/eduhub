import 'package:flutter/material.dart';
import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/default_button.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddSubjectsScreen extends StatelessWidget {
  const AddSubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تسجيل المواد',
        ),
      ),
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Container(
            height: 20,
            width: double.infinity,
            color: kPrimaryColor,
            child: Image.asset(
              Assets.imagesStars,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Container(
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
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        padding: EdgeInsets.all(15.r),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('الفرقة الرابعة',
                                      style: Styles.textStyle18.copyWith(
                                          fontWeight: FontWeight.w600)),
                                  Text('الاسم/احمد ممدوح',
                                      style: Styles.textStyle18.copyWith(
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                              Text('عدد الساعات المتاحة: 18',
                                  style: Styles.textStyle18
                                      .copyWith(fontWeight: FontWeight.w600)),
                              Text('المعدل التراكمي :2.7',
                                  style: Styles.textStyle18
                                      .copyWith(fontWeight: FontWeight.w600)),
                              Text(
                                'عدد الساعات المجتازه: 108',
                                style: Styles.textStyle18
                                    .copyWith(fontWeight: FontWeight.w600),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 280,
                                  alignment: Alignment.center,
                                  width: context.width / 4,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffE6EFFF),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        topLeft: Radius.circular(20)),
                                  ),
                                  child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 6,
                                    itemBuilder: (context, index) {
                                      return const Center(
                                          child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.add_circle_rounded,
                                          color: kPrimaryColor,
                                        ),
                                      ));
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 280,
                                  alignment: Alignment.center,
                                  width: context.width / 4,
                                  decoration: const BoxDecoration(
                                    color: Color(0xfff0f9ee),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                  ),
                                  child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 6,
                                    itemBuilder: (context, index) {
                                      List<String> grads = [
                                        'IT282',
                                        'CS261',
                                        'IT211',
                                        'CS233',
                                        'IS372',
                                        'OD241'
                                      ];
                                      return Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          grads[index],
                                          style: Styles.textStyle22,
                                        ),
                                      ));
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                height: 280,
                                alignment: Alignment.centerRight,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                ),
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    List<String> subjects = [
                                      'التعرف على الكلام',
                                      'برمجة الألعاب',
                                      'النظم الموزعه',
                                      'الكائنات الالية',
                                      'استرجاع المعلومات',
                                      'معالجة اللغات الطبيعيه',
                                    ];
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        subjects[index],
                                        style: Styles.textStyle20,
                                        textAlign: TextAlign.end,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                        padding: EdgeInsets.all(15.r),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Center(
                                child: Text(
                                  'المواد المختارة',
                                  style: Styles.textStyle18.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: kPrimaryColor),
                                ),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  List<String> subjects = [
                                    'التعرف على الكلام',
                                    'برمجة الألعاب',
                                    'النظم الموزعه',
                                    'الكائنات الالية',
                                    'استرجاع المعلومات',
                                    'معالجة اللغات الطبيعيه',
                                  ];
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      subjects[index],
                                      style: Styles.textStyle20,
                                      textAlign: TextAlign.end,
                                    ),
                                  );
                                },
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomMaterialButton(
                        onPressed: () {},
                        text: 'طباعه التسجيل',
                        radius: 20,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        width: context.width * 0.75,
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
