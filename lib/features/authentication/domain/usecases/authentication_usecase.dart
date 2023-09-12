import 'package:dartz/dartz.dart';
import 'package:tdd_architecture_course/core/failure.dart';
import 'package:tdd_architecture_course/core/service_locator.dart';
import 'package:tdd_architecture_course/features/authentication/domain/model/request/generate_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/domain/model/response/session_model.dart';
import 'package:tdd_architecture_course/features/authentication/domain/repositories/authentication_user_repository.dart';

class AuthenticationUseCase {
  Future<Either<Failure, Session>> requestOtp(GenerateOtp generateOtp) async {
    final response = await serviceLocator<AuthticationRepository>()
        .requestOtp(generateOtp: generateOtp);
    // handel some logic if it has
    // if (response.isRight()) {}
    return response;
  }
}
