import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:faculty_app/core/api/api_consumer.dart';
import 'package:faculty_app/core/api/end_points.dart';
import 'package:faculty_app/core/error/exceptions.dart';
import 'package:faculty_app/local/app_shared_prefs.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.api}) : super(LoginInitial());
  final ApiConsumer api;
  AppSharedPreferences appSharedPreferences = AppSharedPreferences();

  Future<void> initPreferences() async {
    await appSharedPreferences.initSharedPreferencesProp();
  }

  Future<void> userLogin({
    required String email,
    required String password,
    required String role,
  }) async {
    try {
      emit(LoginLoading());
      final response = await api.post(
        EndPoints.login,
        body: {'email': email, 'password': password, 'role': role},
      );
      if (response['status'] == 'success') {
        await appSharedPreferences.saveUserToken(response['token']);
        // await appSharedPreferences.saveResetPasswordToken(response['data']['user']['passwordResetToken']);
        log('Saved Token: ${appSharedPreferences.getUserToken()}');
        log('Saved Password Token: ${appSharedPreferences.getResetPasswordToken()}');
        emit(LoginSuccess());
      } else {
        emit(LoginFailure(message: response['message'].toString()));
      }
    } on ServerException catch (error) {
      emit(LoginFailure(message: error.message.toString()));
    }
  }
}
