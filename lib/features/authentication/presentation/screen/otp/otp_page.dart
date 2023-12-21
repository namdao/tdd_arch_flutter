import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/request/verify_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_state.dart';

@RoutePage(name: 'OtpScreens')
class OtpPage extends StatefulWidget {
  const OtpPage(
      {super.key,
      required this.deviceId,
      required this.sessionId,
      required this.mobile});

  final String deviceId;
  final String sessionId;
  final String mobile;

  @override
  State<OtpPage> createState() => _OtpState();
}

class _OtpState extends State<OtpPage> {
  void otpChanged(String value) async {
    // final authenBloc =
    //     Provider.of<AuthenticationBloc>(context, listen: false);
    // context.watch<AuthenticationBloc>();
    VerifyOtpRequest verifyOtpRequest = VerifyOtpRequest(
        mobile: widget.mobile,
        deviceId: widget.deviceId,
        sessionId: widget.sessionId,
        otp: value);
    Provider.of<AuthenticationBloc>(context, listen: false)
        .add(AuthenticationVerifyOtp(verifyOtpRequest));
  }

  @override
  void initState() {
    super.initState();
    Provider.of<AuthenticationBloc>(context, listen: false)
        .add(const AuthenticationInit());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Nhập OTP'),
            Container(
                padding: const EdgeInsets.only(top: 12),
                child: OtpForm(
                  onOtpChange: otpChanged,
                )),
            BlocBuilder<AuthenticationBloc, AuthenticationState>(
                buildWhen: (prev, state) {
              return prev.errorMessage != state.errorMessage;
            }, builder: (context, state) {
              return state.errorMessage != null
                  ? Text(
                      '${state.errorMessage}',
                      style: const TextStyle(color: Colors.red),
                    )
                  : const SizedBox.shrink();
            }),
          ],
        ),
      )),
    ));
  }
}

class OtpForm extends StatefulWidget {
  OtpForm({super.key, required this.onOtpChange, int? pinCount})
      : pintCount = pinCount ?? 6;
  final ValueChanged<String> onOtpChange;
  int pintCount;
  @override
  State<StatefulWidget> createState() => _StateOtp();
}

class _StateOtp extends State<OtpForm> {
  List<FocusNode> listFocus = [];
  List<TextEditingController> listController = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.pintCount; i++) {
      listFocus.add(FocusNode());
      listController.add(TextEditingController());
      // Không dùng hàm onChanged được vì hàm on Change không trigger khi user nhập lại chính giá trị cũ
      listController[i].addListener(() => onChangeValue(i));
    }
  }

  void onChangeValue(int index) {
    if (listController[index].text.length == 1 && listFocus[index].hasFocus) {
      nextFocus(index);
      if (index == widget.pintCount - 1) {
        onConfirmOtp();
      }
    } else if (listController[index].text.isEmpty) {
      previousFocus(index);
    }
  }

  void requestFocus(int index) {
    if (index >= 0 && index < widget.pintCount) {
      FocusScope.of(context).requestFocus(listFocus[index]);
    }
  }

  void selectionInput(int index) {
    if (index >= 0 && index < widget.pintCount) {
      listController[index].selection = TextSelection(
          baseOffset: 0, extentOffset: listController[index].text.length);
    }
  }

  void onConfirmOtp() {
    final concatOtp = StringBuffer();
    for (TextEditingController item in listController) {
      concatOtp.write(item.value.text.toString());
    }
    widget.onOtpChange(concatOtp.toString());
  }

  void nextFocus(int index) {
    listFocus[index]!.unfocus();
    requestFocus(index + 1);
    selectionInput(index + 1);
  }

  void previousFocus(int index) {
    listFocus[index]!.unfocus();
    requestFocus(index - 1);
    selectionInput(index - 1);
  }

  List<Widget> lsInputField() {
    final listInput = List.generate(
      widget.pintCount,
      (index) => SizedBox(
        width: 53,
        height: 53,
        child: TextFormField(
          autofillHints: const [AutofillHints.oneTimeCode],
          controller: listController[index],
          focusNode: listFocus[index],
          textAlign: TextAlign.center,
          onTap: () {
            listController[index].selection = TextSelection(
                baseOffset: 0, extentOffset: listController[index].text.length);
          },
          // onChanged: (value) {
          //   if (value.length == 1) {
          //     nextFocus(index);
          //     if (index == widget.pintCount - 1) {
          //       onConfirmOtp();
          //     }
          //   } else if (value.isEmpty) {
          //     previousFocus(index);
          //   }
          // },
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
        ),
      ),
    );
    return listInput;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 8,
            direction: Axis.horizontal,
            runSpacing: 12,
            children: lsInputField(),
          ),
        )
      ],
    );
  }
}
