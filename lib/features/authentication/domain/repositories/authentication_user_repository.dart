import 'package:dartz/dartz.dart';
import 'package:tdd_architecture_course/core/failure.dart';
import 'package:tdd_architecture_course/features/authentication/domain/model/request/generate_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/domain/model/response/session_model.dart';

abstract class AuthticationRepository {
  Future<Either<Failure, Session>> requestOtp(
      {required GenerateOtp generateOtp});
}
