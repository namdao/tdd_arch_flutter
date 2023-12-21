import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';

class AuthGuardApp extends AutoRouteGuard {
  final AuthenticationBloc authService;
  AuthGuardApp(this.authService);
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.state.status == AuthenticationStatus.authenticated) {
      return resolver.next(true);
    } else {
      router.push(const Authenticate());
      return resolver.next(false);
    }
  }
}

class PublicGuardApp extends AutoRouteGuard {
  final AuthenticationBloc authService;
  PublicGuardApp(this.authService);
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.state.status == AuthenticationStatus.unauthenticated ||
        authService.state.status == AuthenticationStatus.unknown) {
      return resolver.next(true);
    } else {
      router.push(const HomeScreen());
      return resolver.next(false);
    }
  }
}

// class AuthProviderApp extends ChangeNotifier {
//   bool _isAuthenticated = false;
//   bool get isAuthenticated => _isAuthenticated;

//   void login() {
//     _isAuthenticated = true;
//     notifyListeners();
//   }

//   void logout() {
//     _isAuthenticated = false;
//     notifyListeners();
//   }
// }
