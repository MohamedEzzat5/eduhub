import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/features/admin/widgets/admin_home_grid_view_item.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

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
                      Text(
                        'رحمة النحاس',
                        style: Styles.textStyle22.copyWith(color: Colors.white),
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
                      image: Assets.imagesStudent,
                      title: 'الطلاب',
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRouter.adminStudentScreen);
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesDoctor,
                      title: 'الدكتور',
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRouter.adminDoctorScreen);
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesBooks,
                      title: 'المواد',
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRouter.adminSubjectScreen);
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesEvents,
                      title: 'فعاليات',
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRouter.adminEventScreen);
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesExit,
                      title: 'خروج',
                      onTap: () {
                        Navigator.of(context).pop();
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
