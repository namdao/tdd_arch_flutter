// import 'package:authentication_repository/authentication_repository.dart';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:tdd_architecture_course/core/service_locator.dart';
import 'package:tdd_architecture_course/features/authentication/domain/usecases/authentication_usecase.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
// import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';

@RoutePage(name: 'LoginScreens')
class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginState();
}

class _LoginState extends State<LoginPages> {
  final TextEditingController txtPhoneController = TextEditingController();
  final FocusNode _focusNumber = FocusNode();
  String phoneNumber = '';
  String errorInput = '';

  void onHideKeyboard(PointerDownEvent event) {
    if (_focusNumber.hasFocus) {
      _focusNumber.unfocus();
    }
  }

  @override
  void dispose() {
    super.dispose();
    txtPhoneController.dispose();
  }

  void clearInput() {
    setState(() {
      txtPhoneController.value = TextEditingValue.empty;
      errorInput = '';
    });
  }

  @override
  void initState() {
    super.initState();
    // submitPhoneNumber('0987654321');
  }

  void submitPhoneNumber([String fakeNumber = '']) async {
    // BlocProvider.of<AuthenticationBloc>(context).add(
    //     const AuthenticationStatusChanged(AuthenticationStatus.authenticated));
    final result =
        await serviceLocator<AuthenticationUseCase>().requestOtp(phoneNumber);
    result.fold((failure) {
      setState(() {
        errorInput = failure.message;
      });
    }, (data) {
      context.router.navigate(OtpScreens(
          deviceId: data.deviceId,
          sessionId: data.sessionId,
          mobile: data.mobile));
    });
  }

  Widget title() => const Text(
        'Số điện thoại',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      );

  Widget inputPhoneNumber() => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: TextField(
          controller: txtPhoneController,
          focusNode: _focusNumber,
          keyboardType: TextInputType.number,
          onTapOutside: onHideKeyboard,
          onChanged: (value) {
            setState(() {
              phoneNumber = value;
            });
          },
          inputFormatters: [LengthLimitingTextInputFormatter(11)],
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
              filled: true,
              suffix: SizedBox(
                width: 60,
                // height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${phoneNumber.length}/11',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          padding: const EdgeInsets.all(0),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                        ),
                        onPressed: clearInput,
                        child: const Icon(
                          Icons.clear,
                          size: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              fillColor: Colors.white,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black87),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              hintText: 'Nhập số điện thoại của bạn',
              errorText: errorInput.isNotEmpty ? errorInput : null,
              hintStyle: const TextStyle(color: Colors.grey)),
        ),
      );
  Widget submitButton() => ElevatedButton(
        onPressed: phoneNumber.isEmpty ? null : submitPhoneNumber,
        style: ElevatedButton.styleFrom(
            disabledBackgroundColor: Colors.grey.shade300,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            backgroundColor: Colors.pink.shade400,
            minimumSize: const Size(double.infinity, 44)),
        child: const Text('Tiếp tục', style: TextStyle(color: Colors.white)),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromRGBO(255, 214, 0, 1),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title(),
                  inputPhoneNumber(),
                ],
              ),
              submitButton(),
            ],
          ),
        )),
      ),
    );
  }
}
