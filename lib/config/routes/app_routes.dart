import 'package:faculty_app/features/student/add_subjects_screen.dart';
import 'package:flutter/material.dart';

// Import all your screens here
import 'package:faculty_app/features/admin/screens/add_new_doctor.dart';
import 'package:faculty_app/features/admin/screens/add_new_event_screen.dart';
import 'package:faculty_app/features/admin/screens/admin_home_screen.dart';
import 'package:faculty_app/features/admin/screens/admin_doctor_screen.dart';
import 'package:faculty_app/features/admin/screens/admin_student_screen.dart';
import 'package:faculty_app/features/admin/screens/event_screen.dart';
import 'package:faculty_app/features/auth/screens/forget_password_screen.dart';
import 'package:faculty_app/features/auth/screens/login_screen.dart';
import 'package:faculty_app/features/auth/screens/reset_password_screen.dart';
import 'package:faculty_app/features/auth/screens/verification_done_screen.dart';
import 'package:faculty_app/features/auth/screens/verification_screen.dart';
import 'package:faculty_app/features/doctor/screens/doctor_grads.dart';
import 'package:faculty_app/features/doctor/screens/add_new_lec_screen.dart';
import 'package:faculty_app/features/doctor/screens/add_new_sheet_screen.dart';
import 'package:faculty_app/features/doctor/screens/doctor_current_subject.dart';
import 'package:faculty_app/features/doctor/screens/doctor_subject_screen.dart';
import 'package:faculty_app/features/doctor/screens/doctor_table_screen.dart';
import 'package:faculty_app/features/guest/screens/first_guest_screen.dart';
import 'package:faculty_app/features/guest/screens/second_guest_screen.dart';
import 'package:faculty_app/features/splash/presentation/screens/splash_view.dart';
import 'package:faculty_app/features/student/current_subject.dart';
import 'package:faculty_app/features/student/event_screen.dart';
import 'package:faculty_app/features/student/grads.dart';
import 'package:faculty_app/features/student/student_table_screen.dart';
import 'package:faculty_app/features/student/student_subject_screen.dart';

// Other imports
import '../../features/admin/screens/add_new_student.dart';
import '../../features/admin/screens/add_new_subject.dart';
import '../../features/admin/screens/add_subject_to_doctor.dart';
import '../../features/admin/screens/subject_screen.dart';
import '../../features/doctor/screens/doctor_home_screen.dart';
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
  static const adminAddNewEventScreen = '/adminAddNewEventScreen';
  static const adminEventScreen = '/adminEventScreen';
  static const studentHomeScreen = '/studentHomeScreen';
  static const studentGradsScreen = '/studentGradsScreen';
  static const studentSubjectScreen = '/studentSubjectScreen';
  static const studentCurrentSubjectScreen = '/studentCurrentSubjectScreen';
  static const studentEventScreen = '/studentEventScreen';
  static const doctorSubjectScreen = '/doctorSubjectScreen';
  static const doctorCurrentSubjectScreen = '/doctorCurrentSubjectScreen';
  static const doctorAddLecScreen = '/doctorAddLecScreen';
  static const doctorAddSheetScreen = '/doctorAddSheetScreen';
  static const doctorTableScreen = '/doctorTableScreen';
  static const doctorGradsScreen = '/doctorGradsScreen';
  static const studentTableScreenRoute = '/studentTableScreen';
  static const studentAddSubjectScreenRoute = '/studentAddSubjectScreenRoute';

  /// Doctor Routes
  static const doctorHomeScreen = '/doctorHomeScreen';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case firstGuestScreen:
        return MaterialPageRoute(builder: (_) => const FirstGuestScreen());
      case secondGuestScreen:
        return MaterialPageRoute(builder: (_) => const SecondGuestScreen());
      case thirdGuestScreen:
        return MaterialPageRoute(builder: (_) => const ThirdGuestScreen());
      case fourthGuestScreen:
        return MaterialPageRoute(builder: (_) => const FourthGuestScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());
      case verificationScreen:
        return MaterialPageRoute(builder: (_) => const VerificationScreen());
      case verificationDoneScreen:
        return MaterialPageRoute(
            builder: (_) => const VerificationDoneScreen());
      case resetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
      case adminHomeScreen:
        return MaterialPageRoute(builder: (_) =>  AdminHomeScreen());
      case adminDoctorScreen:
        return MaterialPageRoute(builder: (_) => const AdminDoctorScreen());
      case adminStudentScreen:
        return MaterialPageRoute(builder: (_) => const AdminStudentScreen());
      case adminAddNewDoctorScreen:
        return MaterialPageRoute(builder: (_) => const AddNewDoctorScreen());
      case adminAddNewStudentScreen:
        return MaterialPageRoute(builder: (_) => const AddNewStudentScreen());
      case adminSubjectScreen:
        return MaterialPageRoute(builder: (_) => const AdminSubjectScreen());
      case adminAddNewSubjectScreen:
        return MaterialPageRoute(
            builder: (_) => const AdminAddNewSubjectScreen());
      case adminAddSubjectToDoctorScreen:
        return MaterialPageRoute(
            builder: (_) => const AdminAddSubjectToDoctorScreen());
      case adminEventScreen:
        return MaterialPageRoute(builder: (_) => const AdminEventScreen());
      case studentEventScreen:
        return MaterialPageRoute(builder: (_) => const StudentEventScreen());
      case adminAddNewEventScreen:
        return MaterialPageRoute(
            builder: (_) => const AdminAddNewEventScreen());
      case studentHomeScreen:
        return MaterialPageRoute(builder: (_) =>  StudentHomeScreen());
      case studentGradsScreen:
        return MaterialPageRoute(builder: (_) => const GradsScreen());
      case studentSubjectScreen:
        return MaterialPageRoute(builder: (_) => const StudentSubjectScreen());
      case studentCurrentSubjectScreen:
        return MaterialPageRoute(builder: (_) => const CurrentSubject());
      case doctorHomeScreen:
        return MaterialPageRoute(builder: (_) =>  DoctorHomeScreen());
      case doctorSubjectScreen:
        return MaterialPageRoute(builder: (_) => const DoctorSubjectScreen());
      case doctorCurrentSubjectScreen:
        return MaterialPageRoute(builder: (_) => const DoctorCurrentSubject());
      case doctorAddLecScreen:
        return MaterialPageRoute(builder: (_) => const AddNewLecScreen());
      case doctorTableScreen:
        return MaterialPageRoute(builder: (_) => const DoctorTableScreen());
      case doctorAddSheetScreen:
        return MaterialPageRoute(builder: (_) => const AddNewSheetScreen());
      case doctorGradsScreen:
        return MaterialPageRoute(builder: (_) => const DoctorGradsScreen());
      case studentTableScreenRoute:
        return MaterialPageRoute(builder: (_) => const StudentTableScreen());
      case studentAddSubjectScreenRoute:
        return MaterialPageRoute(builder: (_) => const AddSubjectsScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
