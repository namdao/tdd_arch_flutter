import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tdd_architecture_course/core/dio/http_app.dart';
import 'package:tdd_architecture_course/core/failure.dart';
import 'package:tdd_architecture_course/core/service_locator.dart';
import 'package:tdd_architecture_course/features/authentication/data/model/request/verify_otp_request.dart';
import 'package:tdd_architecture_course/features/authentication/domain/entity/user_entity.dart';
import 'package:tdd_architecture_course/features/authentication/domain/usecases/authentication_usecase.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_state.dart';
import 'package:tdd_architecture_course/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:user_repository/user_repository.dart';

part 'authentication_event.dart';
// part 'authentication_state.dart';

class AuthenticationBloc
    extends HydratedBloc<AuthenticationEvent, AuthenticationState> {
  // AuthenticationBloc({required UserRepository userRepository})
  //     : _userRepository = userRepository,
  //       super(const AuthenticationState.unknown()) {
  //   on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
  //   on<AuthenticationLogoutRequest>(_onAuthenticationLogoutRequest);
  // }
  AuthenticationBloc() : super(AuthenticationState.unknown()) {
    // on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationInit>(_initAuthenVerifyOtp);
    on<AuthenticationLogoutRequest>(_onAuthenticationLogoutRequest);
    on<AuthenticationVerifyOtp>(_onAuthenticateVerifyOtp);
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

  void _initAuthenVerifyOtp(
      AuthenticationInit event, Emitter<AuthenticationState> emit) {
    return emit(AuthenticationState.unauthenticated());
  }

  Future<void> _onAuthenticateVerifyOtp(
      AuthenticationVerifyOtp event, Emitter<AuthenticationState> emit) async {
    final result = await serviceLocator<AuthenticationUseCase>()
        .verifyOtp(verifyOtpRequest: event.verifyOtpRequest);
    result.fold((l) {
      return emit(AuthenticationState.errorAuthen(l.message));
    }, (r) {
      return emit(AuthenticationState.authenticated(r.userEntity));
    });
  }

  // Future<void> _onAuthenticationStatusChanged(AuthenticationStatusChanged event,
  //     Emitter<AuthenticationState> emit) async {
  //   switch (event.status) {
  //     case AuthenticationStatus.unauthenticated:
  //       return emit(AuthenticationState.unauthenticated());
  //     case AuthenticationStatus.authenticated:
  //       final user = UserEntity(userId: '111111');
  //       return emit(user != null
  //           ? AuthenticationState.authenticated(user)
  //           : AuthenticationState.unauthenticated());
  //     case AuthenticationStatus.unknown:
  //       return emit(AuthenticationState.unknown());
  //   }
  // }

  void _onAuthenticationLogoutRequest(
      AuthenticationLogoutRequest event, Emitter<AuthenticationState> emit) {
    // _authenticationRepository.logOut();
    // clear data persists
    // HydratedBloc.storage.clear();
    HttpApp().updateTokenAuthorization('');
    return emit(AuthenticationState.unauthenticated());
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
    if (getDataPersist != null && getDataPersist['status'] == 'authenticated') {
      final id = getDataPersist['user']['userId'];
      final user = UserEntity(userId: id);
      return AuthenticationState.authenticated(user);
    }
    return AuthenticationState.unauthenticated();
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
