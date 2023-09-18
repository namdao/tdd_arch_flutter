import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tdd_architecture_course/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:user_repository/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends HydratedBloc<AuthenticationEvent, AuthenticationState> {
  // AuthenticationBloc({required UserRepository userRepository})
  //     : _userRepository = userRepository,
  //       super(const AuthenticationState.unknown()) {
  //   on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
  //   on<AuthenticationLogoutRequest>(_onAuthenticationLogoutRequest);
  // }
  AuthenticationBloc() : super(const AuthenticationState.unknown()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequest>(_onAuthenticationLogoutRequest);
  }

  // final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository = UserRepository();

  // late StreamSubscription<AuthenticationStatus>
  //     _authenticationStatusSubscription;

  @override
  Future<void> close() {
    // _authenticationStatusSubscription.cancel();
    return super.close();
  }

  Future<void> _onAuthenticationStatusChanged(AuthenticationStatusChanged event,
      Emitter<AuthenticationState> emit) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthenticationState.unauthenticated());
      case AuthenticationStatus.authenticated:
        final user = await _tryGetUser();
        return emit(user != null
            ? AuthenticationState.authenticated(user)
            : const AuthenticationState.unauthenticated());
      case AuthenticationStatus.unknown:
        return emit(const AuthenticationState.unknown());
    }
  }

  void _onAuthenticationLogoutRequest(
      AuthenticationLogoutRequest event, Emitter<AuthenticationState> emit) {
    // _authenticationRepository.logOut();
    // clear data persists
    // HydratedBloc.storage.clear();
    return emit(const AuthenticationState.unauthenticated());
  }

  Future<User?> _tryGetUser() async {
    try {
      final user = await _userRepository.getUser();
      return user;
    } catch (_) {
      return null;
    }
  }

  @override
  AuthenticationState fromJson(Map<String, dynamic> json) {
    final getDataPersist = json['authen'];
    if (getDataPersist != null &&
        getDataPersist['status'] == 'AuthenticationStatus.authenticated') {
      final id = getDataPersist['user']['id'];
      User user = User(id);
      return AuthenticationState.authenticated(user);
    }
    return const AuthenticationState.unauthenticated();
  }

  @override
  Map<String, dynamic>? toJson(AuthenticationState state) {
    if (state.status == AuthenticationStatus.authenticated) {
      return {
        'authen': state.toJson(),
      };
    }
    return {
      'authen': null,
    };
  }
}
