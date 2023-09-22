import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tdd_architecture_course/core/failure.dart';
import 'package:tdd_architecture_course/core/service_locator.dart';
import 'package:tdd_architecture_course/features/authentication/data/datasource/remote/auth_remote_datasource.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/request/generate_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/request/verify_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/response/generate_otp_response.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/response/verify_otp_response.dart';
import 'package:tdd_architecture_course/features/authentication/domain/repositories/authentication_user_repository.dart';

class AuthUserRepositoryImpl implements AuthticationRepository {
  @override
  Future<Either<Failure, GenerateOtpResponse>> requestOtp(
      {required GenerateOtpRequest generateOtp}) {
    return serviceLocator<AuthRemoteDataSource>()
        .requestOtp(generateOtp: generateOtp);
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyOtp(
          {required VerifyOtpRequest verifyOtpRequest}) =>
      serviceLocator<AuthRemoteDataSource>()
          .verifyOtp(verifyOtpRequest: verifyOtpRequest);
}
