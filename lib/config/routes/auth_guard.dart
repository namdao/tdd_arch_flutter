import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';

class AuthGuardApp extends AutoRouteGuard {
  final AuthProviderApp authService;
  AuthGuardApp(this.authService);
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.isAuthenticated) {
      return resolver.next(true);
    } else {
      router.push(const Authenticate());
      return resolver.next(false);
    }
  }
}

class AuthProviderApp extends ChangeNotifier {
  bool _isAuthenticated = false;
  bool get isAuthenticated => _isAuthenticated;

  void login() {
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }
}
