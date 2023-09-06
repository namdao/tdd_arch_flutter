part of 'authentication_bloc.dart';

sealed class AuthenticationEvent {
  const AuthenticationEvent();
}

final class AuthenticationStatusChanged extends AuthenticationEvent {
  const AuthenticationStatusChanged(this.status);
  final AuthenticationStatus status;
}

final class AuthenticationLogoutRequest extends AuthenticationEvent {}
