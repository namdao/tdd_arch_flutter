import 'package:dartz/dartz.dart';
import 'package:tdd_architecture_course/core/failure.dart';
import 'package:tdd_architecture_course/core/service_locator.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/request/generate_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/domain/entity/session_entity.dart';
import 'package:tdd_architecture_course/features/authentication/domain/repositories/authentication_user_repository.dart';
import 'package:tdd_architecture_course/utils/utilities.dart';

class AuthenticationUseCase {
  Future<Either<ConnectionFailure, SessionEntity>> requestOtp(
      String phoneNumber) async {
    GenerateOtpRequest otpRequest = GenerateOtpRequest(
      mobile: phoneNumber,
      action: 'GENERATE_OTP',
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
}
