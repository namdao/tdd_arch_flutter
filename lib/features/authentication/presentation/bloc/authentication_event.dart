part of 'authentication_bloc.dart';

sealed class AuthenticationEvent {
  const AuthenticationEvent();
}

final class AuthenticationStatusChanged extends AuthenticationEvent {
  const AuthenticationStatusChanged(this.status);
  final AuthenticationStatus status;
}

final class AuthenticationLogoutRequest extends AuthenticationEvent {}

final class AuthenticationVerifyOtp extends AuthenticationEvent {
  const AuthenticationVerifyOtp(this.verifyOtpRequest);
  final VerifyOtpRequest verifyOtpRequest;
}
