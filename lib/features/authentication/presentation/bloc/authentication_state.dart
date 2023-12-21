import 'package:authentication_repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tdd_architecture_course/features/authentication/domain/entity/user_entity.dart';

// part of 'authentication_bloc.dart';
part 'authentication_state.freezed.dart';
part 'authentication_state.g.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState(
      {required AuthenticationStatus status,
      String? errorMessage,
      UserEntity? user}) = _AuthenticationState;

  factory AuthenticationState.fromJson(Map<String, Object?> json) =>
      _$AuthenticationStateFromJson(json);

  factory AuthenticationState.unknown() => AuthenticationState(
      status: AuthenticationStatus.unknown, errorMessage: '');

  factory AuthenticationState.authenticated(UserEntity user) =>
      AuthenticationState(
          status: AuthenticationStatus.authenticated, user: user);

  factory AuthenticationState.unauthenticated() => AuthenticationState(
      status: AuthenticationStatus.unauthenticated, errorMessage: '');
  factory AuthenticationState.errorAuthen(String errorMessage) =>
      AuthenticationState(
          status: AuthenticationStatus.unauthenticated,
          errorMessage: errorMessage);
  // final AuthenticationStatus status;
  // final UserEntity user = UserEntity(userId: '', fristName: '');

  // @override
  // List<Object> get props => [status, user];
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
