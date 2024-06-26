import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:faculty_app/core/api/end_points.dart';
import 'package:flutter/material.dart';

part 'auth_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Dio dio = Dio();
  Future<void> userLogin(
      {required String email,
      required String password,
      required String role}) async {
    try {
      emit(LoginLoading());
      final response = await dio.post(
        EndPoints.login,
        data: {'email': email, 'password': password, 'role': role},
      );
      debugPrint("======================" + response.toString());
      emit(LoginSuccess());
    } on DioException catch (error) {
      debugPrint("======================" + error.response?.data['message']);
      debugPrint("======================$error");
      emit(LoginFailure(message: error.response?.data['message']));
    }
  }
}
