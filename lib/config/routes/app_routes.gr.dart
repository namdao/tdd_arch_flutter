// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:tdd_architecture_course/config/routes/app_routes.dart' as _i2;
import 'package:tdd_architecture_course/features/authentication/presentation/screen/login/login_page.dart'
    as _i7;
import 'package:tdd_architecture_course/features/authentication/presentation/screen/login/register_page.dart'
    as _i11;
import 'package:tdd_architecture_course/features/authentication/presentation/screen/otp/otp_page.dart'
    as _i8;
import 'package:tdd_architecture_course/features/counter/presentation/screens/counter_screen.dart'
    as _i5;
import 'package:tdd_architecture_course/features/home/presentation/screen/bloc_pratice_screen.dart'
    as _i3;
import 'package:tdd_architecture_course/features/home/presentation/screen/home_screen.dart'
    as _i6;
import 'package:tdd_architecture_course/features/posts/presentation/screen/posts_screen.dart'
    as _i10;
import 'package:tdd_architecture_course/features/praticeWidget/presentation/screen/AnimatedOpacity/animated_opacity_page.dart'
    as _i1;
import 'package:tdd_architecture_course/features/praticeWidget/presentation/screen/BottomTabBar/bottom_tabbar_page.dart'
    as _i4;
import 'package:tdd_architecture_course/features/praticeWidget/presentation/screen/PageView/pageView_page.dart'
    as _i9;
import 'package:tdd_architecture_course/features/praticeWidget/presentation/screen/SliverListGrid/sliverListGrid_page.dart'
    as _i13;
import 'package:tdd_architecture_course/features/praticeWidget/presentation/screen/Transform/transform_page.dart'
    as _i17;
import 'package:tdd_architecture_course/features/settings/presentation/screen/characters/setting_screen.dart'
    as _i12;
import 'package:tdd_architecture_course/features/timer/presentation/screens/timer_screen.dart'
    as _i14;
import 'package:tdd_architecture_course/features/todo/presentation/screen/todo_add_screen.dart'
    as _i15;
import 'package:tdd_architecture_course/features/todo/presentation/screen/todo_screen.dart'
    as _i16;

abstract class $AppRoute extends _i18.RootStackRouter {
  $AppRoute({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    AnimatedOpacityScreen.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AnimatedOpacityPage(),
      );
    },
    Authenticate.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthenticatePage(),
      );
    },
    BlocPraticeRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BlocPratice(),
      );
    },
    BlocPraticePage.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BlocPraticeScreen(),
      );
    },
    BottomTabbarScreen.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BottomNavBar(),
      );
    },
    CounterPage.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CounterScreen(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    LoginScreens.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPages(),
      );
    },
    OtpScreens.name: (routeData) {
      final args = routeData.argsAs<OtpScreensArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.OtpPage(
          key: args.key,
          deviceId: args.deviceId,
          sessionId: args.sessionId,
          mobile: args.mobile,
        ),
      );
    },
    PageViewScreen.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PageViewPage(),
      );
    },
    PostPage.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.PostScreen(),
      );
    },
    PraticeWidget.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.PraticeWidgetPage(),
      );
    },
    RegisterScreens.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RegisterPages(),
      );
    },
    SettingPage.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SettingScreen(),
      );
    },
    SliverListGridScreen.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SliverListGridPage(),
      );
    },
    TimerPage.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.TimerScreen(),
      );
    },
    TodoAddPages.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.TodoAddScreen(),
      );
    },
    TodoBlocRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.TodoBlocPage(),
      );
    },
    TodoPages.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.TodoScreen(),
      );
    },
    TransformScreen.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.TransformPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AnimatedOpacityPage]
class AnimatedOpacityScreen extends _i18.PageRouteInfo<void> {
  const AnimatedOpacityScreen({List<_i18.PageRouteInfo>? children})
      : super(
          AnimatedOpacityScreen.name,
          initialChildren: children,
        );

  static const String name = 'AnimatedOpacityScreen';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthenticatePage]
class Authenticate extends _i18.PageRouteInfo<void> {
  const Authenticate({List<_i18.PageRouteInfo>? children})
      : super(
          Authenticate.name,
          initialChildren: children,
        );

  static const String name = 'Authenticate';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BlocPratice]
class BlocPraticeRoute extends _i18.PageRouteInfo<void> {
  const BlocPraticeRoute({List<_i18.PageRouteInfo>? children})
      : super(
          BlocPraticeRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlocPraticeRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BlocPraticeScreen]
class BlocPraticePage extends _i18.PageRouteInfo<void> {
  const BlocPraticePage({List<_i18.PageRouteInfo>? children})
      : super(
          BlocPraticePage.name,
          initialChildren: children,
        );

  static const String name = 'BlocPraticePage';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BottomNavBar]
class BottomTabbarScreen extends _i18.PageRouteInfo<void> {
  const BottomTabbarScreen({List<_i18.PageRouteInfo>? children})
      : super(
          BottomTabbarScreen.name,
          initialChildren: children,
        );

  static const String name = 'BottomTabbarScreen';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CounterScreen]
class CounterPage extends _i18.PageRouteInfo<void> {
  const CounterPage({List<_i18.PageRouteInfo>? children})
      : super(
          CounterPage.name,
          initialChildren: children,
        );

  static const String name = 'CounterPage';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeScreen]
class HomeScreen extends _i18.PageRouteInfo<void> {
  const HomeScreen({List<_i18.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPages]
class LoginScreens extends _i18.PageRouteInfo<void> {
  const LoginScreens({List<_i18.PageRouteInfo>? children})
      : super(
          LoginScreens.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreens';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OtpPage]
class OtpScreens extends _i18.PageRouteInfo<OtpScreensArgs> {
  OtpScreens({
    _i19.Key? key,
    required String deviceId,
    required String sessionId,
    required String mobile,
    List<_i18.PageRouteInfo>? children,
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

  static const _i18.PageInfo<OtpScreensArgs> page =
      _i18.PageInfo<OtpScreensArgs>(name);
}

class OtpScreensArgs {
  const OtpScreensArgs({
    this.key,
    required this.deviceId,
    required this.sessionId,
    required this.mobile,
  });

  final _i19.Key? key;

  final String deviceId;

  final String sessionId;

  final String mobile;

  @override
  String toString() {
    return 'OtpScreensArgs{key: $key, deviceId: $deviceId, sessionId: $sessionId, mobile: $mobile}';
  }
}

/// generated route for
/// [_i9.PageViewPage]
class PageViewScreen extends _i18.PageRouteInfo<void> {
  const PageViewScreen({List<_i18.PageRouteInfo>? children})
      : super(
          PageViewScreen.name,
          initialChildren: children,
        );

  static const String name = 'PageViewScreen';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PostScreen]
class PostPage extends _i18.PageRouteInfo<void> {
  const PostPage({List<_i18.PageRouteInfo>? children})
      : super(
          PostPage.name,
          initialChildren: children,
        );

  static const String name = 'PostPage';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PraticeWidgetPage]
class PraticeWidget extends _i18.PageRouteInfo<void> {
  const PraticeWidget({List<_i18.PageRouteInfo>? children})
      : super(
          PraticeWidget.name,
          initialChildren: children,
        );

  static const String name = 'PraticeWidget';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i11.RegisterPages]
class RegisterScreens extends _i18.PageRouteInfo<void> {
  const RegisterScreens({List<_i18.PageRouteInfo>? children})
      : super(
          RegisterScreens.name,
          initialChildren: children,
        );

  static const String name = 'RegisterScreens';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SettingScreen]
class SettingPage extends _i18.PageRouteInfo<void> {
  const SettingPage({List<_i18.PageRouteInfo>? children})
      : super(
          SettingPage.name,
          initialChildren: children,
        );

  static const String name = 'SettingPage';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SliverListGridPage]
class SliverListGridScreen extends _i18.PageRouteInfo<void> {
  const SliverListGridScreen({List<_i18.PageRouteInfo>? children})
      : super(
          SliverListGridScreen.name,
          initialChildren: children,
        );

  static const String name = 'SliverListGridScreen';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i14.TimerScreen]
class TimerPage extends _i18.PageRouteInfo<void> {
  const TimerPage({List<_i18.PageRouteInfo>? children})
      : super(
          TimerPage.name,
          initialChildren: children,
        );

  static const String name = 'TimerPage';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.TodoAddScreen]
class TodoAddPages extends _i18.PageRouteInfo<void> {
  const TodoAddPages({List<_i18.PageRouteInfo>? children})
      : super(
          TodoAddPages.name,
          initialChildren: children,
        );

  static const String name = 'TodoAddPages';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.TodoBlocPage]
class TodoBlocRoute extends _i18.PageRouteInfo<void> {
  const TodoBlocRoute({List<_i18.PageRouteInfo>? children})
      : super(
          TodoBlocRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoBlocRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i16.TodoScreen]
class TodoPages extends _i18.PageRouteInfo<void> {
  const TodoPages({List<_i18.PageRouteInfo>? children})
      : super(
          TodoPages.name,
          initialChildren: children,
        );

  static const String name = 'TodoPages';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i17.TransformPage]
class TransformScreen extends _i18.PageRouteInfo<void> {
  const TransformScreen({List<_i18.PageRouteInfo>? children})
      : super(
          TransformScreen.name,
          initialChildren: children,
        );

  static const String name = 'TransformScreen';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}
