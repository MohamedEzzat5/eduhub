import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/app_strings.dart';
import '../../domain/usecases/change_lang_code_usecase.dart';
import '../../domain/usecases/get_saved_lang.dart';
part 'local_state.dart';

class LocalCubit extends Cubit<LocalState> {
  final GetSavedLangUseCase getSavedLangUseCase;
  final ChangeLangCodeUseCase changeLangCodeUseCase;

  LocalCubit(
      {required this.getSavedLangUseCase, required this.changeLangCodeUseCase})
      : super(const ChangeLocaleState(Locale(AppStrings.englishCode)));
  String currentLangCode = AppStrings.englishCode;

  /// get saved language
  Future<void> getSavedLang() async {
    final response = await getSavedLangUseCase.call(NoParams());
    response.fold((failure) => debugPrint(AppStrings.cacheFailure), (value) {
      currentLangCode = value;
      emit(ChangeLocaleState(Locale(currentLangCode)));
    });
  }

  /// change language

  Future<void> _changeLang(String langCode) async {
    final response = await changeLangCodeUseCase.call(langCode);
    response.fold((failure) => debugPrint(AppStrings.cacheFailure), (value) {
      currentLangCode = langCode;
      emit(ChangeLocaleState(Locale(currentLangCode)));
    });
  }

  /// change local

  void toEnglish() => _changeLang(AppStrings.englishCode);

  void toArabic() => _changeLang(AppStrings.arabicCode);
}
