import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:user_repository/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends HydratedBloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
      {required AuthenticationRepository authenticationRepository,
      required UserRepository userRepository})
      : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super(AuthenInitial()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequest>(_onAuthenticationLogoutRequest);
  }

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;

  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  Future<void> _onAuthenticationStatusChanged(AuthenticationStatusChanged event,
      Emitter<AuthenticationState> emit) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(UnAuthenticated(AuthenticationStatus.unauthenticated));
      case AuthenticationStatus.authenticated:
        final user = await _tryGetUser();
        return emit(user != null
            ? Authenticated(AuthenticationStatus.authenticated, user)
            : UnAuthenticated(AuthenticationStatus.unauthenticated));
      case AuthenticationStatus.unknown:
        return emit(AuthenInitial());
    }
  }

  void _onAuthenticationLogoutRequest(
      AuthenticationLogoutRequest event, Emitter<AuthenticationState> emit) {
    return emit(UnAuthenticated(AuthenticationStatus.unauthenticated));
    // _authenticationRepository.logOut();
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
  AuthenticationState? fromJson(Map<String, dynamic> json) {
    final getDataPersist = json['authen'];
    if (getDataPersist != null &&
        getDataPersist['status'] == 'AuthenticationStatus.authenticated') {
      final id = getDataPersist['user']['id'];
      User user = User(id);
      return Authenticated(AuthenticationStatus.authenticated, user);
    }
  }

  @override
  Map<String, dynamic>? toJson(AuthenticationState state) {
    if (state is Authenticated) {
      return {
        'authen': state.toJson(),
      };
    }
    return {
      'authen': null,
    };
    // if (state.status == AuthenticationStatus.authenticated) {
    //   print('insert');
    //   return {
    //     'authen': state.toJson(),
    //   };
    // }
    // print('null');
    // return {'authen': null};
  }
}
