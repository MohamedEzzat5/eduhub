import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/features/admin/widgets/admin_home_grid_view_item.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

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
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xffCACACA),
                        radius: 35,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'احمد عمار',
                            style: Styles.textStyle22
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'الفرقة الثالثة',
                            style: Styles.textStyle20.copyWith(
                                color: Colors.white70,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '2000759',
                            style: Styles.textStyle20.copyWith(
                                color: Colors.white70,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(20),
                  childAspectRatio: 0.95,
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    CustomAdminGridViewItem(
                      image: Assets.imagesBooks,
                      title: 'المواد',
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.studentSubjectScreen);
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesTasgel,
                      title: 'التسجيل الأكاديمي',
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.adminDoctorScreen);
                      },
                    ),

                    CustomAdminGridViewItem(
                      image: Assets.imagesProgress,
                      title: 'تقدم الطالب',
                      onTap: () {

                      },
                    ),

                    CustomAdminGridViewItem(
                      image: Assets.imagesPath,
                      title: 'تقديرات المقررات',
                      onTap: () {
                          GoRouter.of(context).push(AppRouter.studentGradsScreen);
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesTable   ,
                      title: 'الجدول الدراسي',
                      onTap: () {
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesEvents,
                      title: 'فعاليات',
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.studentEventScreen);
                      },
                    ),

                    CustomAdminGridViewItem(
                      image: Assets.imagesExit,
                      title: 'خروج',
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesList,
                      title: 'الائحه',
                      onTap: () {

                      },
                    ),

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
