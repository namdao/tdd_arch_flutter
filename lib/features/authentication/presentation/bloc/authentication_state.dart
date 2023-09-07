part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user = User.empty,
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  final AuthenticationStatus status;
  final User user;

  @override
  List<Object> get props => [status, user];
  Map<String, dynamic> toJson() => {
        'status': status.toString(),
        'user': {'id': user.id.toString()}
      };
}

// final class Authenticated extends AuthenticationState {
//   Authenticated(this.status, this.user);
//   final AuthenticationStatus status;
//   final User user;

//   Map<String, dynamic> toJson() => {
//         'status': status.toString(),
//         'user': {'id': user?.id.toString()}
//       };
// }

// final class UnAuthenticated extends AuthenticationState {
//   UnAuthenticated(this.status);
//   final AuthenticationStatus status;
// }

// final class AuthenInitial extends AuthenticationState {}
