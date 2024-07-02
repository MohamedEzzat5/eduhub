import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:faculty_app/core/api/api_consumer.dart';
import 'package:faculty_app/core/api/end_points.dart';
import 'package:faculty_app/core/error/exceptions.dart';
import 'package:faculty_app/local/app_shared_prefs.dart';
part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final ApiConsumer apiConsumer;
  AppSharedPreferences appSharedPreferences = AppSharedPreferences();
  LogoutCubit({required this.apiConsumer}) : super(LogoutInitial());

  Future<void> logout({required String token}) async {
    try {
      emit(LogoutLoading());
      final response = await apiConsumer.get(
        EndPoints.logout,
        options:  Options(headers: {'Authorization': 'Bearer $token'}),    
      );
      
      if (response['status'] == 'success') {
         appSharedPreferences.clearPrefs();
        emit(LogoutSuccess());
      } else {
        emit(LogoutError(message: response['message'].toString()));
      }
    } on ServerException catch (error) {
      emit(LogoutError(message: error.message.toString()));
    }
  }
}
