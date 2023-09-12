import 'package:dartz/dartz.dart';
import 'package:tdd_architecture_course/core/failure.dart';
import 'package:tdd_architecture_course/core/service_locator.dart';
import 'package:tdd_architecture_course/features/authentication/data/datasource/remote/auth_remote_datasource.dart';
import 'package:tdd_architecture_course/features/authentication/domain/model/request/generate_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/domain/model/response/session_model.dart';
import 'package:tdd_architecture_course/features/authentication/domain/repositories/authentication_user_repository.dart';

class AuthUserRepositoryImpl implements AuthticationRepository {
  @override
  Future<Either<Failure, Session>> requestOtp(
      {required GenerateOtp generateOtp}) {
    return serviceLocator<AuthRemoteDataSource>()
        .requestOtp(generateOtp: generateOtp);
  }
}
