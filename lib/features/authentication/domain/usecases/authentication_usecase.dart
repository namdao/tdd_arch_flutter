import 'package:dartz/dartz.dart';
import 'package:tdd_architecture_course/core/dio/http_app.dart';
import 'package:tdd_architecture_course/core/failure.dart';
import 'package:tdd_architecture_course/core/service_locator.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/request/generate_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/request/verify_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/domain/entity/auth_entity.dart';
import 'package:tdd_architecture_course/features/authentication/domain/entity/session_entity.dart';
import 'package:tdd_architecture_course/features/authentication/domain/entity/user_entity.dart';
import 'package:tdd_architecture_course/features/authentication/domain/repositories/authentication_user_repository.dart';
import 'package:tdd_architecture_course/utils/utilities.dart';

class AuthenticationUseCase {
  Future<Either<ConnectionFailure, SessionEntity>> requestOtp(
      String phoneNumber) async {
    GenerateOtpRequest otpRequest = GenerateOtpRequest(
      mobile: phoneNumber,
      deviceId: await getDeviceId(),
    );
    final response = await serviceLocator<AuthticationRepository>()
        .requestOtp(generateOtp: otpRequest);
    return response.fold((l) {
      return Left(l as ConnectionFailure);
    },
        (r) => Right(SessionEntity(
            sessionId: r.sessionId,
            mobile: otpRequest.mobile,
            deviceId: otpRequest.deviceId)));
  }

  Future<Either<ConnectionFailure, AuthEntity>> verifyOtp(
      {required VerifyOtpRequest verifyOtpRequest}) async {
    final response = await serviceLocator<AuthticationRepository>()
        .verifyOtp(verifyOtpRequest: verifyOtpRequest);
    return response.fold((l) => Left(l as ConnectionFailure), (r) {
      HttpApp().updateTokenAuthorization(r.auth.token);
      return Right(AuthEntity(
          token: r.auth.token,
          refreshToken: r.auth.refreshToken,
          tokenExpireAt: r.auth.tokenExpireAt,
          userEntity:
              UserEntity(userId: r.user.userId, fristName: r.user.name)));
    });
  }
}
