import 'package:faculty_app/core/utils/app_strings.dart';
import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/gaps.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';

class DoctorTableScreen extends StatefulWidget {
  const DoctorTableScreen({super.key});

  @override
  State<DoctorTableScreen> createState() => _DoctorTableScreenState();
}

class _DoctorTableScreenState extends State<DoctorTableScreen>
    with TickerProviderStateMixin {
  late TabController tabController = TabController(vsync: this, length: 6);

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
        title: const Text(
          'الجدول الدراسي',
        ),
      ),
      body: Column(children: [
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
          flex: 1,
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
                  labelStyle: Styles.textStyle16.copyWith(
                      color: kPrimaryColor,
                      fontFamily: AppStrings.fontFamily,
                      fontWeight: FontWeight.w600),
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 0),
                  indicator: UnderlineTabIndicator(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        width: 4, color: kPrimaryColor, strokeAlign: 2),
                    insets: const EdgeInsets.symmetric(horizontal: 0),
                  ),
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: const [
                    Tab(text: 'السبت'),
                    Tab(
                      text: 'الاحد',
                    ),
                    Tab(
                      text: 'الاثنين',
                    ),
                    Tab(
                      text: 'الثلاثاء',
                    ),
                    Tab(
                      text: 'الاربعاء',
                    ),
                    Tab(
                      text: 'الخميس',
                    ),
                  ],
                  labelColor: kPrimaryColor,
                  indicatorColor: kPrimaryColor,
                ),
                Expanded(
                  child: TabBarView(controller: tabController, children: [
                    Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return const CustomSchaduleWidget();
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return const CustomSchaduleWidget();
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return const CustomSchaduleWidget();
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return const CustomSchaduleWidget();
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return const CustomSchaduleWidget();
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return const CustomSchaduleWidget();
                            },
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class CustomSchaduleWidget extends StatelessWidget {
  const CustomSchaduleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'نمذجه ومحاكاه',
              style: Styles.textStyle22.copyWith(color: kPrimaryColor),
            ),
            Gaps.vGap12,
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '(09:00 am - 11:00 am)',
                    style: Styles.textStyle16,
                  ),
                  Text(
                    '(مدرج 5)',
                    style: Styles.textStyle16,
                  ),
                ]),
            const Divider(
              thickness: 2,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'د/ اسامه',
                style: Styles.textStyle16.copyWith(
                  color: kPrimaryColor,
                ),
              ),
              const Text(
                'محاضره',
                style: Styles.textStyle16,
              ),
            ]),
          ],
        ));
  }
}
