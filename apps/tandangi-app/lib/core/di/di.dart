import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:tandangi/core/dio_interceptor/auth_interceptor.dart';
import 'package:tandangi/data/data_source/app_version_remote_data_source.dart';
import 'package:tandangi/data/data_source/auth_remote_data_source.dart';
import 'package:tandangi/data/data_source/character_remote_data_source.dart';
import 'package:tandangi/data/data_source/user_remote_data_source.dart';
import 'package:tandangi/data/repository/app_version_repository_impl.dart';
import 'package:tandangi/data/repository/auth_repository_impl.dart';
import 'package:tandangi/data/repository/character_repository_impl.dart';
import 'package:tandangi/data/repository/user_repository_impl.dart';
import 'package:tandangi/domain/repository/app_version_repository.dart';
import 'package:tandangi/domain/repository/auth_repository.dart';
import 'package:tandangi/domain/repository/character_repository.dart';
import 'package:tandangi/util/secured_storage/secured_storage.dart';
import 'package:tandangi/domain/repository/user_repository.dart';
import 'package:tandangi/flavors.dart';

final getIt = GetIt.instance;

void initDI() {
  // 중복 등록 방지
  if (getIt.isRegistered<Dio>()) return;

  // iOS/macOS 기본 Talker 출력은 dart:developer.log → release에서 flutter run 터미널에 안 보이는 경우가 많음.
  final talker = TalkerFlutter.init(
    settings: TalkerSettings(
      useHistory: true,
      useConsoleLogs: true,
      maxHistoryItems: 1000,
    ),
    logger: TalkerLogger(
      output: (message) {
        // ignore: avoid_print
        print(message);
      },
    ),
  );
  getIt.registerLazySingleton<Talker>(() => talker);

  // ─────────────────────────────────────────────
  // 1) Core: Network
  // ─────────────────────────────────────────────
  final dio = Dio(
    BaseOptions(
      baseUrl: FlavorInfo.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(minutes: 2),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  dio.interceptors.add(
    TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printRequestData: true,
        printResponseHeaders: true,
        printResponseMessage: true,
        printResponseData: true,
      ),
    ),
  );

  final authInterceptor = AuthInterceptor(dio);
  dio.interceptors.add(authInterceptor);

  getIt.registerLazySingleton<Dio>(() => dio);
  getIt.registerLazySingleton<AuthInterceptor>(() => authInterceptor);

  // ─────────────────────────────────────────────
  // 2) Data: RemoteDataSources
  // ─────────────────────────────────────────────
  getIt.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(getIt<Dio>()),
  );

  getIt.registerLazySingleton<AppVersionRemoteDataSource>(
    () => AppVersionRemoteDataSourceImpl(getIt<Dio>()),
  );

  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(getIt<Dio>()),
  );

  getIt.registerLazySingleton<CharacterRemoteDataSource>(
    () => CharacterRemoteDataSourceImpl(getIt<Dio>()),
  );

  // ─────────────────────────────────────────────
  // 3) Data: Repositories
  // ─────────────────────────────────────────────
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(getIt<UserRemoteDataSource>()),
  );

  getIt.registerLazySingleton<AppVersionRepository>(
    () => AppVersionRepositoryImpl(getIt<AppVersionRemoteDataSource>()),
  );

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt<AuthRemoteDataSource>()),
  );

  getIt.registerLazySingleton<CharacterRepository>(
    () => CharacterRepositoryImpl(getIt<CharacterRemoteDataSource>()),
  );

  // ─────────────────────────────────────────────
  // 4) Infra/Services
  // ─────────────────────────────────────────────
  getIt.registerLazySingleton<SecuredStorage>(() => SecuredStorage());

  // getIt.registerLazySingleton<FcmService>(
  //   () => FcmService(
  //     repo: getIt<FcmRepository>(),
  //     storage: getIt<SecuredStorage>(),
  //     talker: getIt<Talker>(),
  //   ),
  // );

  // getIt.registerLazySingleton<LocalNotificationService>(
  //   () => LocalNotificationService(),
  // );

  // getIt.registerLazySingleton<DynamicLinkService>(
  //   () => DynamicLinkService(talker: getIt<Talker>()),
  // );
}
