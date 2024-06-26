import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/default_button.dart';
import 'package:faculty_app/core/widgets/gaps.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';

class DoctorGradsScreen extends StatelessWidget {
  const DoctorGradsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            color: kPrimaryColor,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            'الدرجات',
                            style: Styles.textStyle24
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  Assets.imagesStars,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child: Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'نمذجه ومحاكاه',
                              style: Styles.textStyle22
                                  .copyWith(color: kPrimaryColor),
                            ),
                          ],
                        ),
                        Gaps.vGap8,
                        customRow(title: 'عام'),
                        customRow(title: 'علوم حاسب'),
                        customRow(title: 'تكنولوجيا المعلومات'),
                        customRow(title: 'نظم معلومات'),
                        Gaps.vGap10,
                        CustomMaterialButton(
                          onPressed: () {},
                          text: 'رفع الدرجات',
                          fontSize: 17,
                          radius: 5,
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ]),
    );
  }

  Row customRow({required String title}) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(
        title,
        style: Styles.textStyle18,
      ),
      Gaps.hGap8,
      Container(
        height: 16,
        width: 16,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(8),
        ),
      )
    ]);
  }
}
