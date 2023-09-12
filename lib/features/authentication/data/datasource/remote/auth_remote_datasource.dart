import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tdd_architecture_course/config/constant/api_global.dart';
import 'package:tdd_architecture_course/core/dio/http_app.dart';
import 'package:tdd_architecture_course/core/failure.dart';
import 'package:tdd_architecture_course/core/model/data_remote_model.dart';
import 'package:tdd_architecture_course/core/service_locator.dart';
import 'package:tdd_architecture_course/features/authentication/domain/model/request/generate_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/domain/model/response/session_model.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, Session>> requestOtp(
      {required GenerateOtp generateOtp});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final HttpApp httpApp = serviceLocator<HttpApp>();

  @override
  Future<Either<Failure, Session>> requestOtp(
      {required GenerateOtp generateOtp}) async {
    try {
      final response =
          await httpApp.post(ApiGlobal().actionOtp, data: generateOtp.toJson());
      DataRemoteModel remoteResponse = DataRemoteModel.fromJson(response.data);
      if (remoteResponse.status.code == HttpStatus.ok) {
        return Right(Session.fromJson(remoteResponse.data));
      }
      return Left(ConnectionFailure(response.data['message']));
    } on DioException catch (e) {
      return const Left(Exception('Exeception request otp'));
    }
  }
}
