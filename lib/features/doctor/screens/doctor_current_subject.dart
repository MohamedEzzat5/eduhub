import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/app_strings.dart';
import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/default_button.dart';

class DoctorCurrentSubject extends StatefulWidget {
  const DoctorCurrentSubject({super.key});

  @override
  State<DoctorCurrentSubject> createState() => _DoctorCurrentSubjectState();
}

class _DoctorCurrentSubjectState extends State<DoctorCurrentSubject>
    with TickerProviderStateMixin {
  late TabController tabController = TabController(vsync: this, length: 2);

  @override
  void initState() {
    super.initState();
    tabController;
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text('التعرف علي الكلام'),
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
            flex: 6,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  TabBar(
                    controller: tabController,
                    labelPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: Styles.textStyle22.copyWith(
                        color: kPrimaryColor,
                        fontFamily: AppStrings.fontFamily),
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 10),
                    indicator: UnderlineTabIndicator(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          width: 4, color: kPrimaryColor, strokeAlign: 2),
                      insets: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                    tabs: const [
                      Tab(text: 'محاضرات'),
                      Tab(
                        text: 'شيتات',
                      ),
                    ],
                    labelColor: kPrimaryColor,
                    indicatorColor: kPrimaryColor,
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        Column(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Container(
                                      width: double.infinity,
                                      height: context.height * 0.15,
                                      margin: const EdgeInsets.all(10),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: const Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.cloud_download_sharp,
                                                color: kPrimaryColor,
                                                size: 40,
                                              ),
                                              Text(
                                                'download',
                                                style: Styles.textStyle20
                                                    .copyWith(
                                                        color: kPrimaryColor),
                                              ),
                                            ],
                                          ),
                                          const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'محاضرة 1',
                                                  style: Styles.textStyle20,
                                                ),
                                                Text(
                                                  '(introduction)',
                                                  style: Styles.textStyle20,
                                                ),
                                              ]),
                                        ],
                                      ));
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(12.r),
                              child: CustomMaterialButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRouter.doctorAddLecScreen);
                                },
                                text: 'اضافة محاضرة',
                                width: context.width * 0.4,
                                radius: 5,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Container(
                                      width: double.infinity,
                                      height: context.height * 0.15,
                                      margin: const EdgeInsets.all(10),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: const Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.cloud_upload_outlined,
                                                color: kPrimaryColor,
                                                size: 40,
                                              ),
                                              Text(
                                                'upload',
                                                style: Styles.textStyle20
                                                    .copyWith(
                                                        color: kPrimaryColor),
                                              ),
                                            ],
                                          ),
                                          const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'sheet 1',
                                                  style: Styles.textStyle20,
                                                ),
                                                Text(
                                                  '(introduction)',
                                                  style: Styles.textStyle20,
                                                ),
                                              ]),
                                        ],
                                      ));
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(12.r),
                              child: CustomMaterialButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRouter.doctorAddSheetScreen);
                                },
                                text: 'اضافة تكليف',
                                width: context.width * 0.4,
                                radius: 5,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
