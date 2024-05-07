import 'package:faculty_app/features/auth/screens/forget_password_screen.dart';
import 'package:faculty_app/features/auth/screens/login_screen.dart';
import 'package:faculty_app/features/auth/screens/register_screen.dart';
import 'package:faculty_app/features/guest/screens/first_guest_screen.dart';
import 'package:faculty_app/features/guest/screens/second_guest_screen.dart';
import 'package:faculty_app/features/splash/presentation/screens/splash_view.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_strings.dart';
import '../../features/guest/screens/fourth_guest_screen.dart';
import '../../features/guest/screens/third_guest_screen.dart';

class Routes {
  static const initialRoute = '/';
  static const firstGuestScreen = '/firstGuestScreen';
  static const secondGuestScreen = '/secondGuestScreen';
  static const thirdGuestScreen = '/thirdGuestScreen';
  static const fourthGuestScreen = '/fourthGuestScreen';
  static const loginScreen = '/loginScreen';
  static const registerScreen = '/registerScreen';
  static const forgetPasswordScreen = '/forgetPasswordScreen';
}

class AppRoutes {
  static Route? onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

        case Routes.firstGuestScreen:
        return MaterialPageRoute(
          builder: (context) => const FirstGuestScreen(),
        );
        case Routes.secondGuestScreen:
        return MaterialPageRoute(
          builder: (context) => const SecondGuestScreen(),
        );

        case Routes.thirdGuestScreen:
        return MaterialPageRoute(
          builder: (context) => const ThirdGuestScreen(),
        );

        case Routes.fourthGuestScreen:
        return MaterialPageRoute(
          builder: (context) => const FourthGuestScreen(),
        );

        case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

        case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );

        case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordScreen(),
        );


      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
