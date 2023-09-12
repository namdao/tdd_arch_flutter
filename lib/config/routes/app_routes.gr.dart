// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:tdd_architecture_course/config/routes/app_routes.dart' as _i1;
import 'package:tdd_architecture_course/features/authentication/presentation/screen/login/login_page.dart'
    as _i5;
import 'package:tdd_architecture_course/features/authentication/presentation/screen/login/register_page.dart'
    as _i7;
import 'package:tdd_architecture_course/features/counter/presentation/screens/counter_screen.dart'
    as _i3;
import 'package:tdd_architecture_course/features/home/presentation/screen/bloc_pratice_screen.dart'
    as _i2;
import 'package:tdd_architecture_course/features/home/presentation/screen/home_screen.dart'
    as _i4;
import 'package:tdd_architecture_course/features/posts/presentation/screen/posts_screen.dart'
    as _i6;
import 'package:tdd_architecture_course/features/settings/presentation/screen/characters/setting_screen.dart'
    as _i8;
import 'package:tdd_architecture_course/features/splash/presentation/screen/splash_page.dart'
    as _i9;
import 'package:tdd_architecture_course/features/timer/presentation/screens/timer_screen.dart'
    as _i10;
import 'package:tdd_architecture_course/features/todo/presentation/screen/todo_screen.dart'
    as _i11;

abstract class $AppRoute extends _i12.RootStackRouter {
  $AppRoute({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    Authenticate.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthenticatePage(),
      );
    },
    BlocPraticeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BlocPratice(),
      );
    },
    BlocPraticePage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BlocPraticeScreen(),
      );
    },
    BottomTabRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BottomTabPage(),
      );
    },
    CounterPage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CounterScreen(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    LoginScreens.name: (routeData) {
      final args = routeData.argsAs<LoginScreensArgs>(
          orElse: () => const LoginScreensArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.LoginPages(key: args.key),
      );
    },
    PostPage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.PostScreen(),
      );
    },
    RegisterScreens.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RegisterPages(),
      );
    },
    SettingPage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingScreen(),
      );
    },
    SplashScreen.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashPage(),
      );
    },
    TimerPage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.TimerScreen(),
      );
    },
    TodoPages.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.TodoScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthenticatePage]
class Authenticate extends _i12.PageRouteInfo<void> {
  const Authenticate({List<_i12.PageRouteInfo>? children})
      : super(
          Authenticate.name,
          initialChildren: children,
        );

  static const String name = 'Authenticate';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i1.BlocPratice]
class BlocPraticeRoute extends _i12.PageRouteInfo<void> {
  const BlocPraticeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BlocPraticeRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlocPraticeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BlocPraticeScreen]
class BlocPraticePage extends _i12.PageRouteInfo<void> {
  const BlocPraticePage({List<_i12.PageRouteInfo>? children})
      : super(
          BlocPraticePage.name,
          initialChildren: children,
        );

  static const String name = 'BlocPraticePage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i1.BottomTabPage]
class BottomTabRoute extends _i12.PageRouteInfo<void> {
  const BottomTabRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BottomTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomTabRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CounterScreen]
class CounterPage extends _i12.PageRouteInfo<void> {
  const CounterPage({List<_i12.PageRouteInfo>? children})
      : super(
          CounterPage.name,
          initialChildren: children,
        );

  static const String name = 'CounterPage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreen extends _i12.PageRouteInfo<void> {
  const HomeScreen({List<_i12.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPages]
class LoginScreens extends _i12.PageRouteInfo<LoginScreensArgs> {
  LoginScreens({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          LoginScreens.name,
          args: LoginScreensArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginScreens';

  static const _i12.PageInfo<LoginScreensArgs> page =
      _i12.PageInfo<LoginScreensArgs>(name);
}

class LoginScreensArgs {
  const LoginScreensArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'LoginScreensArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.PostScreen]
class PostPage extends _i12.PageRouteInfo<void> {
  const PostPage({List<_i12.PageRouteInfo>? children})
      : super(
          PostPage.name,
          initialChildren: children,
        );

  static const String name = 'PostPage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RegisterPages]
class RegisterScreens extends _i12.PageRouteInfo<void> {
  const RegisterScreens({List<_i12.PageRouteInfo>? children})
      : super(
          RegisterScreens.name,
          initialChildren: children,
        );

  static const String name = 'RegisterScreens';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SettingScreen]
class SettingPage extends _i12.PageRouteInfo<void> {
  const SettingPage({List<_i12.PageRouteInfo>? children})
      : super(
          SettingPage.name,
          initialChildren: children,
        );

  static const String name = 'SettingPage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SplashPage]
class SplashScreen extends _i12.PageRouteInfo<void> {
  const SplashScreen({List<_i12.PageRouteInfo>? children})
      : super(
          SplashScreen.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreen';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.TimerScreen]
class TimerPage extends _i12.PageRouteInfo<void> {
  const TimerPage({List<_i12.PageRouteInfo>? children})
      : super(
          TimerPage.name,
          initialChildren: children,
        );

  static const String name = 'TimerPage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.TodoScreen]
class TodoPages extends _i12.PageRouteInfo<void> {
  const TodoPages({List<_i12.PageRouteInfo>? children})
      : super(
          TodoPages.name,
          initialChildren: children,
        );

  static const String name = 'TodoPages';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
