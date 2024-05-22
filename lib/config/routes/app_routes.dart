import 'package:faculty_app/features/admin/screens/add_new_doctor.dart';
import 'package:faculty_app/features/admin/screens/admin_home_screen.dart';
import 'package:faculty_app/features/admin/screens/admin_doctor_screen.dart';
import 'package:faculty_app/features/admin/screens/admin_student_screen.dart';
import 'package:faculty_app/features/admin/screens/event_screen.dart';
import 'package:faculty_app/features/auth/screens/forget_password_screen.dart';
import 'package:faculty_app/features/auth/screens/login_screen.dart';
import 'package:faculty_app/features/auth/screens/reset_password_screen.dart';
import 'package:faculty_app/features/auth/screens/verification_done_screen.dart';
import 'package:faculty_app/features/auth/screens/verification_screen.dart';
import 'package:faculty_app/features/guest/screens/first_guest_screen.dart';
import 'package:faculty_app/features/guest/screens/second_guest_screen.dart';
import 'package:faculty_app/features/splash/presentation/screens/splash_view.dart';
import 'package:faculty_app/features/student/current_subject.dart';
import 'package:faculty_app/features/student/grads.dart';
import 'package:faculty_app/features/student/student_subject_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/admin/screens/add_new_student.dart';
import '../../features/admin/screens/add_new_subject.dart';
import '../../features/admin/screens/add_subject_to_doctor.dart';
import '../../features/admin/screens/subject_screen.dart';
import '../../features/guest/screens/fourth_guest_screen.dart';
import '../../features/guest/screens/third_guest_screen.dart';
import '../../features/student/student_home_screen.dart';
class AppRouter {
  static const initialRoute = '/';
  static const firstGuestScreen = '/firstGuestScreen';
  static const secondGuestScreen = '/secondGuestScreen';
  static const thirdGuestScreen = '/thirdGuestScreen';
  static const fourthGuestScreen = '/fourthGuestScreen';
  static const loginScreen = '/loginScreen';
  static const registerScreen = '/registerScreen';
  static const forgetPasswordScreen = '/forgetPasswordScreen';
  static const verificationScreen = '/verificationScreen';
  static const verificationDoneScreen = '/verificationDoneScreen';
  static const resetPasswordScreen = '/resetPasswordScreen';
  static const adminHomeScreen = '/adminHomeScreen';
  static const adminDoctorScreen = '/adminDoctorScreen';
  static const adminStudentScreen = '/adminStudentScreen';
  static const adminAddNewDoctorScreen = '/adminAddNewDoctorScreen';
  static const adminAddNewStudentScreen = '/adminAddNewStudentScreen';
  static const adminSubjectScreen = '/adminSubjectScreen';
  static const adminAddNewSubjectScreen = '/adminAddNewSubjectScreen';
  static const adminAddSubjectToDoctorScreen = '/adminAddSubjectToDoctorScreen';
  static const adminEventScreen = '/adminEventScreen';
  static const studentHomeScreen = '/studentHomeScreen';
  static const studentGradsScreen = '/studentGradsScreen';
  static const studentSubjectScreen = '/studentSubjectScreen';
  static const studentCurrentSubjectScreen = '/studentCurrentSubjectScreen';

  static final router = GoRouter(
      routes: <RouteBase>[

        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const SplashScreen();
          },
        ),


        GoRoute(
          path: firstGuestScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const FirstGuestScreen();
          },
        ),


        GoRoute(
          path: secondGuestScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const SecondGuestScreen();
          },
        ),


        GoRoute(
          path: thirdGuestScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const ThirdGuestScreen();
          },
        ),


        GoRoute(
          path: fourthGuestScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const FourthGuestScreen();
          },
        ),


        GoRoute(
          path: loginScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const LoginScreen();
          },
        ),


        GoRoute(
          path: forgetPasswordScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const ForgetPasswordScreen();
          },
        ),


        GoRoute(
          path: verificationScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const VerificationScreen();
          },
        ),


        GoRoute(
          path: verificationDoneScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const VerificationDoneScreen();
          },
        ),


        GoRoute(
          path: resetPasswordScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const ResetPasswordScreen();
          },
        ),


        GoRoute(
          path: adminHomeScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const AdminHomeScreen();
          },
        ),

        GoRoute(
          path: adminDoctorScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const AdminDoctorScreen();
          },
        ),

        GoRoute(
          path: adminStudentScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const AdminStudentScreen();
          },
        ),

        GoRoute(
          path: adminAddNewDoctorScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const AddNewDoctorScreen();
          },
        ),


        GoRoute(
          path: adminAddNewStudentScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const AddNewStudentScreen();
          },
        ),


        GoRoute(
          path: adminSubjectScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const AdminSubjectScreen();
          },
        ),


        GoRoute(
          path: adminAddNewSubjectScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const AdminAddNewSubjectScreen();
          },
        ),


        GoRoute(
          path: adminAddSubjectToDoctorScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const AdminAddSubjectToDoctorScreen();
          },
        ),


        GoRoute(
          path: adminEventScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const AdminEventScreen();
          },
        ),


        GoRoute(
          path: studentHomeScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const StudentHomeScreen();
          },
        ),


        GoRoute(
          path: studentGradsScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const GradsScreen();
          },
        ),


        GoRoute(
          path: studentSubjectScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const StudentSubjectScreen();
          },
        ),


        GoRoute(
          path: studentCurrentSubjectScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const CurrentSubject();
          },
        ),



      ]


  );
}
