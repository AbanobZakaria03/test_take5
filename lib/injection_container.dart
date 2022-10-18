
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/repositories/take5_repository.dart';
import 'logic/login_cubit/login_cubit.dart';
import 'core/network/network_info.dart';
import 'core/utils/services/attachments_service.dart';
import 'core/utils/services/local_storage_service.dart';
import 'core/utils/services/dio_client.dart';
import 'data/datasources/remote_data_source.dart';
import 'data/datasources/local_data_source.dart';

final sl = GetIt.instance;

Future<void> init() async {
//! blocs/cubits

  sl.registerFactory(() => LoginCubit(userRepository: sl()));

//! Repositories
  sl.registerLazySingleton<Take5Repository>(() => Take5RepositoryImpl(
        remoteDataSource: sl(),
        // localDataSource: sl(),
      ));

//! Datasources
  sl.registerLazySingleton<RemoteDataSource>(
      () => FakeRemoteDataSourceImpl());

  // sl.registerLazySingleton<RemoteDataSource>(
  //     () => RemoteDataSourceImpl(client: sl()));

  // sl.registerLazySingleton<LocalDataSource>(
  //     () => LocalDataSourceImpl(localStorageService: sl()));

//! Core
  sl.registerLazySingleton(() => DioClient(sl()));
  sl.registerLazySingleton(() => LocalStorageService(sl()));
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton(() => AttachmentsService(sl()));

//! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => ImagePicker());
}
