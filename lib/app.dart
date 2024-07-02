import 'package:faculty_app/features/auth/screens/cubit/login/login_cubit.dart';
import 'package:faculty_app/features/auth/screens/cubit/logout_cubit/logout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/routes/app_routes.dart';
import 'config/themes/app_theme.dart';
import 'core/utils/app_strings.dart';
import 'package:faculty_app/injection_container.dart' as di;

class FacultyApp extends StatelessWidget {
  const FacultyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => di.sl<LoginCubit>(),
          ),

          BlocProvider(
            create: (context) => di.sl<LogoutCubit>(),
          ),
        ],
        child: MaterialApp(
          onGenerateRoute: AppRouter.onGenerateRoute,
          title: AppStrings.appName,
          theme: appTheme(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
