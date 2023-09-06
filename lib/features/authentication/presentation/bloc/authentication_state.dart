part of 'authentication_bloc.dart';

class AuthenticationState {
  // const AuthenticationState(this.user, this.status);

  // factory AuthenticationState.initial() {
  //   return const AuthenticationState._();
  // }

  // factory AuthenticationState.authenticate(User user) {
  //   return AuthenticationState._(
  //       status: AuthenticationStatus.authenticated, user: user);
  // }

  // factory AuthenticationState.unauthenticated() {
  //   return const AuthenticationState._(
  //       status: AuthenticationStatus.unauthenticated);
  // }
}

final class Authenticated extends AuthenticationState {
  Authenticated(this.status, this.user);
  final AuthenticationStatus status;
  final User user;

  Map<String, dynamic> toJson() => {
        'status': status.toString(),
        'user': {'id': user?.id.toString()}
      };
}

final class UnAuthenticated extends AuthenticationState {
  UnAuthenticated(this.status);
  final AuthenticationStatus status;
}

final class AuthenInitial extends AuthenticationState {}
