import 'package:faculty_app/features/guest/screens/first_guest_screen.dart';
import 'package:faculty_app/features/splash/presentation/screens/splash_view.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_strings.dart';

class Routes {
  static const initialRoute = '/';
  static const firstGuestScreen = '/firstGuestScreen';
  static const secondGuestScreen = '/secondGuestScreen';
  static const thirdGuestScreen = '/thirdGuestScreen';
  static const fourthGuestScreen = '/fourthGuestScreen';
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



      // case Routes.randomQuoteRoute:
      //   return MaterialPageRoute(
      //       builder: (context) => BlocProvider(
      //         create: (context) => di.sl<RandomQuoteCubit>(),
      //         child: const QuoteScreen(),
      //       ));

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
