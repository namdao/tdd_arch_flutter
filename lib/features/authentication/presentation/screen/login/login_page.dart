// import 'package:authentication_repository/authentication_repository.dart';
import 'dart:io';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/core/service_locator.dart';
import 'package:tdd_architecture_course/features/authentication/domain/model/request/generate_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/domain/usecases/authentication_usecase.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
// import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';

@RoutePage(name: 'LoginScreens')
class LoginPages extends StatelessWidget {
  LoginPages({super.key}) {
    getDeviceId();
  }
  late String deviceId = '';

  Future<void> getDeviceId() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo data = await deviceInfo.androidInfo;
      deviceId = data.id;
    } else if (Platform.isIOS) {
      IosDeviceInfo data = await deviceInfo.iosInfo;
      deviceId = data.identifierForVendor!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login Screen')),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  context.router.navigateNamed('/auth/register');
                },
                child: const Text('Register')),
            TextButton(
                onPressed: () async {
                  GenerateOtp dataRequestOtp = GenerateOtp(
                      deviceId: deviceId,
                      mobile: '84987654321',
                      action: 'GENERATE_OTP');
                  var result = await serviceLocator<AuthenticationUseCase>()
                      .requestOtp(dataRequestOtp);
                  result.fold(
                    (failure) {
                      print('failure: ${failure}');
                    },
                    (data) {
                      print('success: ${data}');
                      print(data.sessionId);
                    },
                  );
                  // context
                  //     .read<AuthenticationRepository>()
                  //     .logIn('phoneNumber', 'otp');
                  // BlocProvider.of<AuthenticationBloc>(context).add(
                  //     const AuthenticationStatusChanged(
                  //         AuthenticationStatus.authenticated));
                },
                child: const Text('Login'))
          ],
        ));
  }
}
