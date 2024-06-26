import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/api/api_consumer.dart';
import 'core/api/app_interceptor.dart';
import 'core/api/dio_consumer.dart';
import 'core/network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  ///!!! Features

  /// Blocs
  // sl.registerFactory<RandomQuoteCubit>(
  //         () => RandomQuoteCubit(getRandomQuoteUseCase: sl()));
  // sl.registerFactory<LocalCubit>(
  //         () => LocalCubit(getSavedLangUseCase: sl(), changeLangCodeUseCase: sl()));

  /// Use cases
  // sl.registerLazySingleton<GetRandomQuote>(
  //         () => GetRandomQuote(quoteRepository: sl()));
  // sl.registerLazySingleton<GetSavedLangUseCase>(
  //         () => GetSavedLangUseCase(langRepository: sl()));
  // sl.registerLazySingleton<ChangeLangCodeUseCase>(
  //         () => ChangeLangCodeUseCase(langRepository: sl()));

  /// Repository
  // sl.registerLazySingleton<QuoteRepository>(() => QuoteRepositoryImpl(
  //     networkInfo: sl(),
  //     randomQuoteRemoteDataSource: sl(),
  //     randomQuoteLocalDataSource: sl()));
  // sl.registerLazySingleton<LangRepository>(
  //         () => LangRepositoryImpl(langLocalDataSource: sl()));

  // Data Sources
  // sl.registerLazySingleton<RandomQuoteLocalDataSource>(
  //         () => RandomQuoteLocalDataSourceImpl(sharedPreferences: sl()));
  // sl.registerLazySingleton<RandomQuoteRemoteDataSource>(
  //         () => RandomQuoteRemoteDataSourceImpl(apiConsumer: sl()));
  // sl.registerLazySingleton<LangLocalDataSource>(
  //         () => LangLocalDataSourceImpl(sharedPreferences: sl()));

  /// Core
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl()));
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(internetConnectionChecker: sl()));
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => AppInterceptors());
  sl.registerLazySingleton(() => LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true));
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => Dio());
}
