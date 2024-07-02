import 'package:faculty_app/features/splash/presentation/screens/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SplashViewBody(),
    );
  }
}
