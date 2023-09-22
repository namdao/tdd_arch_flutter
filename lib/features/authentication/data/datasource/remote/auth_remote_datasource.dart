import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tdd_architecture_course/config/constant/api_global.dart';
import 'package:tdd_architecture_course/core/dio/http_app.dart';
import 'package:tdd_architecture_course/core/failure.dart';
import 'package:tdd_architecture_course/core/model/data_remote_model.dart';
import 'package:tdd_architecture_course/core/service_locator.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/request/generate_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/request/verify_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/response/generate_otp_response.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/response/verify_otp_response.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, GenerateOtpResponse>> requestOtp(
      {required GenerateOtpRequest generateOtp});
  Future<Either<Failure, VerifyOtpResponse>> verifyOtp(
      {required VerifyOtpRequest verifyOtpRequest});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final HttpApp httpApp = serviceLocator<HttpApp>();

  @override
  Future<Either<Failure, GenerateOtpResponse>> requestOtp(
      {required GenerateOtpRequest generateOtp}) async {
    try {
      final response =
          await httpApp.post(ApiGlobal().actionOtp, data: generateOtp.toJson());
      DataRemoteModel remoteResponse = DataRemoteModel.fromJson(response.data);
      if (remoteResponse.status.code == HttpStatus.ok) {
        return Right(GenerateOtpResponse.fromJson(remoteResponse.data));
      }
      return Left(ConnectionFailure(
          remoteResponse.status.message, remoteResponse.status.code));
    } on DioException catch (e) {
      return const Left(Exception('Exeception request otp'));
    }
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyOtp(
      {required VerifyOtpRequest verifyOtpRequest}) async {
    try {
      final response = await httpApp.post(ApiGlobal().actionOtp,
          data: verifyOtpRequest.toJson());
      DataRemoteModel remoteModel = DataRemoteModel.fromJson(response.data);
      if (remoteModel.status.code == HttpStatus.ok) {
        return Right(VerifyOtpResponse.fromJson(remoteModel.data));
      }
      return Left(ConnectionFailure(
          remoteModel.status.message, remoteModel.status.code));
    } on DioException catch (e) {
      return const Left(Exception('Exeception verify otp'));
    }
  }
}
