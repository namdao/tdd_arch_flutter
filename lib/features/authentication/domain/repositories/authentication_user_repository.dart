import 'package:dartz/dartz.dart';
import 'package:tdd_architecture_course/core/failure.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/request/generate_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/response/generate_otp_response.dart';

abstract class AuthticationRepository {
  Future<Either<Failure, GenerateOtpResponse>> requestOtp(
      {required GenerateOtpRequest generateOtp});
}
