import 'package:calendar/presentation/page/home/bloc/home_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:calendar/config/base_url_config.dart';
import 'package:calendar/core/network/network_info.dart';
import 'package:calendar/data/datasource/events_info/events_info_remote_data_source.dart';
import 'package:calendar/data/datasource/month/month_remote_data_source.dart';
import 'package:calendar/data/repository/events_info/events_info_repository_impl.dart';
import 'package:calendar/data/repository/month/month_repository_impl.dart';
import 'package:calendar/domain/repository/events_info/events_info_repository.dart';
import 'package:calendar/domain/repository/month/month_repository.dart';
import 'package:calendar/domain/usecase/get_evetns_info/get_evetns_info.dart';
import 'package:calendar/domain/usecase/get_moth/get_month.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /**
   * ! Features
   */
  // Bloc
  sl.registerFactory(
    () => HomeScreenBloc(
      getEventsInfo: sl(),
      getMoth: sl(),
    ),
  );

  // Use Case
  sl.registerLazySingleton(() => GetEventsInfo(eventsInfoRepository: sl()));
  sl.registerLazySingleton(() => GetMoth(monthRepository: sl()));

  // Repository
  sl.registerLazySingleton<EventsInfoRepository>(
    () => EventsInfoRepositoryImpl(
      eventsInfoRemoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<MonthRepository>(
    () => MonthRepositoryImpl(
      monthRemoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  // Data Source
  sl.registerLazySingleton<EventsInfoRemoteDataSource>(
      () => EventsInfoRemoteDataSourceImpl(dio: sl()));
  sl.registerLazySingleton<MonthRemoteDataSource>(
      () => MonthRemoteDataSourceImpl(dio: sl()));
  /**
   * ! Core
   */
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /**
   * ! External
   */
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio();
    dio.options.baseUrl = BaseUrlConfig.baseUrl;
    return dio;
  });
  sl.registerLazySingleton<Connectivity>(() => Connectivity());
}
