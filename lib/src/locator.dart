import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/datasource/local/app_database.dart';
import 'data/datasource/remote/news_api_service.dart';
import 'data/repository/api_repository_impl.dart';
import 'data/repository/database_repository_impl.dart';
import 'domain/repository/api_repository.dart';
import 'domain/repository/database_repository.dart';
import 'utils/constants/strings.dart';

final locator = GetIt.asNewInstance();

Future<void> initializeDependencies() async {
  final db = await $FloorAppDatabase.databaseBuilder(databaseName).build();
  locator.registerSingleton<AppDatabase>(db);

  locator.registerSingleton<DatabaseRepository>(
      DatabaseRepositoryImpl(locator<AppDatabase>()));

  final dio = Dio();
  dio.interceptors.add(AwesomeDioInterceptor());

  locator.registerSingleton<Dio>(dio);

  locator.registerSingleton<NewsApiService>(
    NewsApiService(locator<Dio>()),
  );

  locator.registerSingleton<ApiRepository>(
    ApiRepositoryImpl(locator<NewsApiService>()),
  );
}
