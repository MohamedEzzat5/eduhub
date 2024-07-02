import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/constance.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/features/admin/widgets/admin_home_grid_view_item.dart';
import 'package:faculty_app/features/auth/screens/cubit/logout_cubit/logout_cubit.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:faculty_app/local/app_shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorHomeScreen extends StatelessWidget {
   DoctorHomeScreen({super.key});
  final AppSharedPreferences appSharedPreferences = AppSharedPreferences();

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
                            'جمال فاروق',
                            style: Styles.textStyle22
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'gamal.elfarok@giail.com',
                            style: Styles.textStyle22
                                .copyWith(color: Colors.white38),
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
                      image: Assets.imagesDoctorTable,
                      title: 'جدول المحاضرات',
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRouter.doctorTableScreen);
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesBooks,
                      title: 'المواد',
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRouter.doctorSubjectScreen);
                      },
                    ),
                    CustomAdminGridViewItem(
                      image: Assets.imagesDoctorGrads,
                      title: 'الدرجات',
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRouter.doctorGradsScreen);
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
