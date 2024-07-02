import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/features/admin/widgets/admin_home_grid_view_item.dart';
import 'package:faculty_app/features/auth/screens/cubit/logout_cubit/logout_cubit.dart';
import 'package:faculty_app/features/student/pdf_viewer.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:faculty_app/local/app_shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StudentHomeScreen extends StatelessWidget {
  StudentHomeScreen({super.key});
  final AppSharedPreferences appSharedPreferences = AppSharedPreferences();

  @override
  Widget build(BuildContext context) {
    String url =
        'https://mu.menofia.edu.eg/PrtlFiles/Faculties/fci/Portal/Files/%D9%84%D8%A7%D8%A6%D8%AD%D8%A9%20%D8%AD%D8%A7%D8%B3%D8%A8%D8%A7%D8%AA%20%D8%A7%D9%84%D9%85%D9%86%D9%88%D9%81%D9%8A%D8%A9%20%D8%A7%D9%84%D9%86%D8%B3%D8%AE%D8%A9%20%D8%A7%D9%84%D9%85%D8%B9%D8%AF%D9%84%D8%A9-1.pdf';
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40.r,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      child: CircleAvatar(
                        radius: 37.r,
                        backgroundColor: Colors.white,
                        child: Center(
                          child: SvgPicture.asset(
                              'assets/images/user_profile_edit.svg'),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'احمد عمار',
                          style:
                              Styles.textStyle22.copyWith(color: Colors.white),
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
                        Navigator.pushNamed(
                            context, AppRouter.studentSubjectScreen);
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesTasgel,
                      title: 'التسجيل الأكاديمي',
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRouter.studentAddSubjectScreenRoute);
                      },
                    ),
                    // CustomAdminGridViewItem(
                    //   image: Assets.imagesProgress,
                    //   title: 'تقدم الطالب',
                    //   onTap: () {},
                    // ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesPath,
                      title: 'تقديرات المقررات',
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRouter.studentGradsScreen);
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesTable,
                      title: 'الجدول الدراسي',
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRouter.studentTableScreenRoute);
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesEvents,
                      title: 'فعاليات',
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRouter.studentEventScreen);
                      },
                    ),
                    BlocConsumer<LogoutCubit, LogoutState>(
                      listener: (context, state) {
                        if (state is LogoutSuccess) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.green,
                              content: Text(
                                'تم تسجيل الخروج بنجاح',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          );
                          Navigator.pushNamedAndRemoveUntil(
                              context, AppRouter.loginScreen, (route) => false);
                        } else if (state is LogoutError) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.red,
                              content: Text(state.message),
                            ),
                          );
                        }
                      },
                      builder: (context, state) {
                        return state is LogoutLoading
                            ? const Center(child: CircularProgressIndicator())
                            : CustomAdminGridViewItem(
                                image: Assets.imagesExit,
                                title: 'خروج',
                                onTap: () {
                                  context.read<LogoutCubit>().logout(
                                        token: appSharedPreferences
                                            .getUserToken()
                                            .toString(),
                                      );
                                },
                              );
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesList,
                      title: 'الائحه',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PdfViewerScreen(
                                      url: url,
                                    )));
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
