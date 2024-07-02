import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/utils/text_styles.dart';
import 'package:faculty_app/core/widgets/gaps.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentEventScreen extends StatefulWidget {
  const StudentEventScreen({super.key});

  @override
  State<StudentEventScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<StudentEventScreen> {
  final TextEditingController doctorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text("فعاليات"),
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
            flex: 5,
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.all(15.r),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(color: kPrimaryColor, width: 2.5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '06 JUN 24, 06:00 AM',
                                        style: TextStyles.bold16()
                                            .copyWith(color: kPrimaryColor),
                                      ),
                                      Gaps.hGap30,
                                      Text(
                                        'رحلة دهب',
                                        style: TextStyles.bold16()
                                            .copyWith(color: kPrimaryColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'الذهاب والإستمتاع بمناظر الجبال والصحراء والشواطئ الرمليةو مياه البحر الاحمر ويتم من خلالها العديد من رحلات السفاري.',
                                    style: TextStyles.regular14()
                                        .copyWith(color: Colors.black),
                                    textAlign: TextAlign.start,
                                    textDirection: TextDirection.rtl,
                                  ),
                                  Gaps.vGap8,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '500 LE',
                                        style: TextStyles.bold16()
                                            .copyWith(color: kPrimaryColor),
                                      ),
                                      Text(
                                        'VF-Cash  0123456789',
                                        style: TextStyles.bold16()
                                            .copyWith(color: kPrimaryColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 110.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15.r),
                                      bottomRight: Radius.circular(15.r)),
                                  image: const DecorationImage(
                                    image: AssetImage(Assets.imagesEvent2),
                                    fit: BoxFit.cover,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15.r),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(color: kPrimaryColor, width: 2.5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '06 JUN 24, 06:00 AM',
                                        style: TextStyles.bold16()
                                            .copyWith(color: kPrimaryColor),
                                      ),
                                      Gaps.hGap30,
                                      Text(
                                        'ITI Speakers',
                                        style: TextStyles.bold16()
                                            .copyWith(color: kPrimaryColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'لقاء تعريفي بالتعاون مع معهد تكنولوجيا المعلومات لتوضيح البرامج المختلفه للطلبه والخريجين وكيفية الاستفاده منها وتعريفهم عن المنح التدريبيه المقدمه من المعهد.',
                                    style: TextStyles.regular14()
                                        .copyWith(color: Colors.black),
                                    textAlign: TextAlign.start,
                                    textDirection: TextDirection.rtl,
                                  ),
                                  Gaps.vGap8,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'free',
                                        style: TextStyles.bold16()
                                            .copyWith(color: kPrimaryColor),
                                      ),
                                      Text(
                                        'VF-Cash  0123456789',
                                        style: TextStyles.bold16()
                                            .copyWith(color: kPrimaryColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 110.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15.r),
                                      bottomRight: Radius.circular(15.r)),
                                  image: const DecorationImage(
                                    image: AssetImage(Assets.imagesEvent2),
                                    fit: BoxFit.cover,
                                  )),
                            )
                          ],
                        ),
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
