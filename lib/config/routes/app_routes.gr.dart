// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:tdd_architecture_course/config/routes/app_routes.dart' as _i2;
import 'package:tdd_architecture_course/features/authentication/presentation/screen/login/login_page.dart'
    as _i7;
import 'package:tdd_architecture_course/features/authentication/presentation/screen/login/register_page.dart'
    as _i10;
import 'package:tdd_architecture_course/features/authentication/presentation/screen/otp/otp_page.dart'
    as _i8;
import 'package:tdd_architecture_course/features/counter/presentation/screens/counter_screen.dart'
    as _i5;
import 'package:tdd_architecture_course/features/home/presentation/screen/bloc_pratice_screen.dart'
    as _i3;
import 'package:tdd_architecture_course/features/home/presentation/screen/home_screen.dart'
    as _i6;
import 'package:tdd_architecture_course/features/posts/presentation/screen/posts_screen.dart'
    as _i9;
import 'package:tdd_architecture_course/features/praticeWidget/presentation/screen/AnimatedOpacity/animated_opacity_page.dart'
    as _i1;
import 'package:tdd_architecture_course/features/praticeWidget/presentation/screen/BottomTabBar/bottom_tabbar_page.dart'
    as _i4;
import 'package:tdd_architecture_course/features/settings/presentation/screen/characters/setting_screen.dart'
    as _i11;
import 'package:tdd_architecture_course/features/timer/presentation/screens/timer_screen.dart'
    as _i12;
import 'package:tdd_architecture_course/features/todo/presentation/screen/todo_add_screen.dart'
    as _i13;
import 'package:tdd_architecture_course/features/todo/presentation/screen/todo_screen.dart'
    as _i14;

abstract class $AppRoute extends _i15.RootStackRouter {
  $AppRoute({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AnimatedOpacityScreen.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AnimatedOpacityPage(),
      );
    },
    Authenticate.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthenticatePage(),
      );
    },
    BlocPraticeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BlocPratice(),
      );
    },
    BlocPraticePage.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BlocPraticeScreen(),
      );
    },
    BottomTabbarScreen.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BottomNavBar(),
      );
    },
    CounterPage.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CounterScreen(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    LoginScreens.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPages(),
      );
    },
    OtpScreens.name: (routeData) {
      final args = routeData.argsAs<OtpScreensArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.OtpPage(
          key: args.key,
          deviceId: args.deviceId,
          sessionId: args.sessionId,
          mobile: args.mobile,
        ),
      );
    },
    PostPage.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PostScreen(),
      );
    },
    PraticeWidget.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.PraticeWidgetPage(),
      );
    },
    RegisterScreens.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RegisterPages(),
      );
    },
    SettingPage.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SettingScreen(),
      );
    },
    TimerPage.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.TimerScreen(),
      );
    },
    TodoAddPages.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.TodoAddScreen(),
      );
    },
    TodoBlocRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.TodoBlocPage(),
      );
    },
    TodoPages.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.TodoScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AnimatedOpacityPage]
class AnimatedOpacityScreen extends _i15.PageRouteInfo<void> {
  const AnimatedOpacityScreen({List<_i15.PageRouteInfo>? children})
      : super(
          AnimatedOpacityScreen.name,
          initialChildren: children,
        );

  static const String name = 'AnimatedOpacityScreen';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthenticatePage]
class Authenticate extends _i15.PageRouteInfo<void> {
  const Authenticate({List<_i15.PageRouteInfo>? children})
      : super(
          Authenticate.name,
          initialChildren: children,
        );

  static const String name = 'Authenticate';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BlocPratice]
class BlocPraticeRoute extends _i15.PageRouteInfo<void> {
  const BlocPraticeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          BlocPraticeRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlocPraticeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BlocPraticeScreen]
class BlocPraticePage extends _i15.PageRouteInfo<void> {
  const BlocPraticePage({List<_i15.PageRouteInfo>? children})
      : super(
          BlocPraticePage.name,
          initialChildren: children,
        );

  static const String name = 'BlocPraticePage';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BottomNavBar]
class BottomTabbarScreen extends _i15.PageRouteInfo<void> {
  const BottomTabbarScreen({List<_i15.PageRouteInfo>? children})
      : super(
          BottomTabbarScreen.name,
          initialChildren: children,
        );

  static const String name = 'BottomTabbarScreen';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CounterScreen]
class CounterPage extends _i15.PageRouteInfo<void> {
  const CounterPage({List<_i15.PageRouteInfo>? children})
      : super(
          CounterPage.name,
          initialChildren: children,
        );

  static const String name = 'CounterPage';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeScreen]
class HomeScreen extends _i15.PageRouteInfo<void> {
  const HomeScreen({List<_i15.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPages]
class LoginScreens extends _i15.PageRouteInfo<void> {
  const LoginScreens({List<_i15.PageRouteInfo>? children})
      : super(
          LoginScreens.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreens';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OtpPage]
class OtpScreens extends _i15.PageRouteInfo<OtpScreensArgs> {
  OtpScreens({
    _i16.Key? key,
    required String deviceId,
    required String sessionId,
    required String mobile,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          OtpScreens.name,
          args: OtpScreensArgs(
            key: key,
            deviceId: deviceId,
            sessionId: sessionId,
            mobile: mobile,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpScreens';

  static const _i15.PageInfo<OtpScreensArgs> page =
      _i15.PageInfo<OtpScreensArgs>(name);
}

class OtpScreensArgs {
  const OtpScreensArgs({
    this.key,
    required this.deviceId,
    required this.sessionId,
    required this.mobile,
  });

  final _i16.Key? key;

  final String deviceId;

  final String sessionId;

  final String mobile;

  @override
  String toString() {
    return 'OtpScreensArgs{key: $key, deviceId: $deviceId, sessionId: $sessionId, mobile: $mobile}';
  }
}

/// generated route for
/// [_i9.PostScreen]
class PostPage extends _i15.PageRouteInfo<void> {
  const PostPage({List<_i15.PageRouteInfo>? children})
      : super(
          PostPage.name,
          initialChildren: children,
        );

  static const String name = 'PostPage';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PraticeWidgetPage]
class PraticeWidget extends _i15.PageRouteInfo<void> {
  const PraticeWidget({List<_i15.PageRouteInfo>? children})
      : super(
          PraticeWidget.name,
          initialChildren: children,
        );

  static const String name = 'PraticeWidget';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.RegisterPages]
class RegisterScreens extends _i15.PageRouteInfo<void> {
  const RegisterScreens({List<_i15.PageRouteInfo>? children})
      : super(
          RegisterScreens.name,
          initialChildren: children,
        );

  static const String name = 'RegisterScreens';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SettingScreen]
class SettingPage extends _i15.PageRouteInfo<void> {
  const SettingPage({List<_i15.PageRouteInfo>? children})
      : super(
          SettingPage.name,
          initialChildren: children,
        );

  static const String name = 'SettingPage';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.TimerScreen]
class TimerPage extends _i15.PageRouteInfo<void> {
  const TimerPage({List<_i15.PageRouteInfo>? children})
      : super(
          TimerPage.name,
          initialChildren: children,
        );

  static const String name = 'TimerPage';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.TodoAddScreen]
class TodoAddPages extends _i15.PageRouteInfo<void> {
  const TodoAddPages({List<_i15.PageRouteInfo>? children})
      : super(
          TodoAddPages.name,
          initialChildren: children,
        );

  static const String name = 'TodoAddPages';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.TodoBlocPage]
class TodoBlocRoute extends _i15.PageRouteInfo<void> {
  const TodoBlocRoute({List<_i15.PageRouteInfo>? children})
      : super(
          TodoBlocRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoBlocRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.TodoScreen]
class TodoPages extends _i15.PageRouteInfo<void> {
  const TodoPages({List<_i15.PageRouteInfo>? children})
      : super(
          TodoPages.name,
          initialChildren: children,
        );

  static const String name = 'TodoPages';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
