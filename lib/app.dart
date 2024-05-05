import 'package:flutter/material.dart';
import 'config/locale/app_localizations_setup.dart';
import 'config/routes/app_routes.dart';
import 'config/themes/app_theme.dart';
import 'core/utils/app_strings.dart';


class FacultyApp extends StatelessWidget {
  const FacultyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
          return MaterialApp(
            title: AppStrings.appName,
            theme: appTheme(),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRoutes.onGeneratedRoute,
           // locale: state.locale,
            supportedLocales: AppLocalizationsSetup.supportedLocales,
            localeResolutionCallback:
            AppLocalizationsSetup.localeResolutionCallback,
            localizationsDelegates: AppLocalizationsSetup
                .localizationsDelegates,
          );

  }}

