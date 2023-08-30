// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:tdd_architecture_course/config/routes/app_routes.dart' as _i1;
import 'package:tdd_architecture_course/features/auth/presentation/pages/login/login_page.dart'
    as _i6;
import 'package:tdd_architecture_course/features/auth/presentation/pages/login/register_page.dart'
    as _i8;
import 'package:tdd_architecture_course/features/characters/presentation/pages/characters/character_detail_page.dart'
    as _i2;
import 'package:tdd_architecture_course/features/characters/presentation/pages/characters/character_page.dart'
    as _i3;
import 'package:tdd_architecture_course/features/characters/presentation/pages/characters/pag1.dart'
    as _i7;
import 'package:tdd_architecture_course/features/counter/presentation/screens/counter_screen.dart'
    as _i4;
import 'package:tdd_architecture_course/features/home/presentation/screen/home_screen.dart'
    as _i5;
import 'package:tdd_architecture_course/features/timer/presentation/screens/timer_screen.dart'
    as _i9;

abstract class $AppRoute extends _i10.RootStackRouter {
  $AppRoute({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    Authenticate.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthenticatePage(),
      );
    },
    BottomTabRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BottomTabPage(),
      );
    },
    CharacterDetailScreens.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CharacterDetailPage(),
      );
    },
    CharacterScreens.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CharacterPage(),
      );
    },
    CounterPage.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CounterScreen(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    LoginScreens.name: (routeData) {
      final args = routeData.argsAs<LoginScreensArgs>(
          orElse: () => const LoginScreensArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.LoginPages(
          key: args.key,
          onLoginResult: args.onLoginResult,
        ),
      );
    },
    Page1.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.Page1(),
      );
    },
    RegisterScreens.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.RegisterPages(),
      );
    },
    TimerPage.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.TimerScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthenticatePage]
class Authenticate extends _i10.PageRouteInfo<void> {
  const Authenticate({List<_i10.PageRouteInfo>? children})
      : super(
          Authenticate.name,
          initialChildren: children,
        );

  static const String name = 'Authenticate';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i1.BottomTabPage]
class BottomTabRoute extends _i10.PageRouteInfo<void> {
  const BottomTabRoute({List<_i10.PageRouteInfo>? children})
      : super(
          BottomTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomTabRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CharacterDetailPage]
class CharacterDetailScreens extends _i10.PageRouteInfo<void> {
  const CharacterDetailScreens({List<_i10.PageRouteInfo>? children})
      : super(
          CharacterDetailScreens.name,
          initialChildren: children,
        );

  static const String name = 'CharacterDetailScreens';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CharacterPage]
class CharacterScreens extends _i10.PageRouteInfo<void> {
  const CharacterScreens({List<_i10.PageRouteInfo>? children})
      : super(
          CharacterScreens.name,
          initialChildren: children,
        );

  static const String name = 'CharacterScreens';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CounterScreen]
class CounterPage extends _i10.PageRouteInfo<void> {
  const CounterPage({List<_i10.PageRouteInfo>? children})
      : super(
          CounterPage.name,
          initialChildren: children,
        );

  static const String name = 'CounterPage';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreen extends _i10.PageRouteInfo<void> {
  const HomeScreen({List<_i10.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPages]
class LoginScreens extends _i10.PageRouteInfo<LoginScreensArgs> {
  LoginScreens({
    _i11.Key? key,
    void Function()? onLoginResult,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          LoginScreens.name,
          args: LoginScreensArgs(
            key: key,
            onLoginResult: onLoginResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginScreens';

  static const _i10.PageInfo<LoginScreensArgs> page =
      _i10.PageInfo<LoginScreensArgs>(name);
}

class LoginScreensArgs {
  const LoginScreensArgs({
    this.key,
    this.onLoginResult,
  });

  final _i11.Key? key;

  final void Function()? onLoginResult;

  @override
  String toString() {
    return 'LoginScreensArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [_i7.Page1]
class Page1 extends _i10.PageRouteInfo<void> {
  const Page1({List<_i10.PageRouteInfo>? children})
      : super(
          Page1.name,
          initialChildren: children,
        );

  static const String name = 'Page1';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RegisterPages]
class RegisterScreens extends _i10.PageRouteInfo<void> {
  const RegisterScreens({List<_i10.PageRouteInfo>? children})
      : super(
          RegisterScreens.name,
          initialChildren: children,
        );

  static const String name = 'RegisterScreens';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.TimerScreen]
class TimerPage extends _i10.PageRouteInfo<void> {
  const TimerPage({List<_i10.PageRouteInfo>? children})
      : super(
          TimerPage.name,
          initialChildren: children,
        );

  static const String name = 'TimerPage';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
