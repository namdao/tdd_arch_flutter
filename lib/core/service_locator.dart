import 'package:get_it/get_it.dart';
import 'package:tdd_architecture_course/core/dio/http_app.dart';
import 'package:tdd_architecture_course/features/authentication/data/datasource/remote/auth_remote_datasource.dart';
import 'package:tdd_architecture_course/features/authentication/data/repository/auth_user_repository.dart';
import 'package:tdd_architecture_course/features/authentication/domain/repositories/authentication_user_repository.dart';
import 'package:tdd_architecture_course/features/authentication/domain/usecases/authentication_usecase.dart';

final serviceLocator = GetIt.instance;

Future<void> setUpServiceLocator() async {
  // usecase
  initUseCase();
  // repository
  initRepository();
  // data source
  initDataSource();
  // Dio
  serviceLocator.registerSingleton<HttpApp>(HttpApp());
}

void initUseCase() {
  serviceLocator
      .registerFactory<AuthenticationUseCase>(() => AuthenticationUseCase());
}

void initRepository() {
  serviceLocator
      .registerFactory<AuthticationRepository>(() => AuthUserRepositoryImpl());
}

void initDataSource() {
  serviceLocator
      .registerFactory<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl());
}
