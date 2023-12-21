import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:tdd_architecture_course/config/routes/auth_guard.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:tdd_architecture_course/features/todo/presentation/bloc/todo_bloc.dart';

// part 'app_routes.gr.dart';
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRoute extends $AppRoute {
  AuthenticationBloc authenticationBloc;
  AppRoute({required this.authenticationBloc});

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
          path: '/',
          guards: [AuthGuardApp(authenticationBloc)],
          page: HomeScreen.page,
          children: [
            AutoRoute(
              page: BlocPraticeRoute.page,
              path: 'bloc',
              children: [
                AutoRoute(page: BlocPraticePage.page, path: ''),
                AutoRoute(page: CounterPage.page, path: 'counter'),
                AutoRoute(page: TimerPage.page, path: 'timer'),
                AutoRoute(page: PostPage.page, path: 'postsList'),
                AutoRoute(
                    page: AnimatedOpacityScreen.page, path: 'opacityAnimated'),
              ],
            ),
            AutoRoute(
              path: 'settings',
              page: SettingPage.page,
            ),
          ]),
      AutoRoute(page: PraticeWidget.page, path: '/pratice-widget', children: [
        AutoRoute(page: BottomTabbarScreen.page, path: 'bottom-tab'),
        AutoRoute(page: PageViewScreen.page, path: 'pageview'),
        AutoRoute(page: SliverListGridScreen.page, path: 'sliverListGrid'),
        AutoRoute(page: TransformScreen.page, path: 'transform'),
      ]),
      AutoRoute(
          guards: [AuthGuardApp(authenticationBloc)],
          page: TodoBlocRoute.page,
          path: '/todoBloc',
          children: [
            AutoRoute(
              initial: true,
              page: TodoPages.page,
              path: '',
            ),
            AutoRoute(
              page: TodoAddPages.page,
              path: 'todoAdd',
            ),
          ]),
      // Stack Authenticate (public page)
      CustomRoute(
        page: Authenticate.page,
        guards: [PublicGuardApp(authenticationBloc)],
        path: '/auth',
        keepHistory: false,
        children: [
          AutoRoute(page: LoginScreens.page, path: ''),
          AutoRoute(page: RegisterScreens.page, path: 'register'),
          AutoRoute(page: OtpScreens.page, path: 'otp'),
        ],
        transitionsBuilder: TransitionsBuilders.fadeIn,
        // durationInMilliseconds: 300
      ),
    ];
  }
}

@RoutePage(name: 'PraticeWidget')
class PraticeWidgetPage extends AutoRouter {
  const PraticeWidgetPage({super.key});
}

@RoutePage(name: 'Authenticate')
class AuthenticatePage extends AutoRouter {
  const AuthenticatePage({super.key});
}

@RoutePage(name: 'BlocPraticeRoute')
class BlocPratice extends AutoRouter {
  const BlocPratice({super.key});
}

// Các trang children của Page này sẽ truy cập vào đc cùng 1 bloc
@RoutePage(name: 'TodoBlocRoute')
class TodoBlocPage extends StatelessWidget {
  const TodoBlocPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => TodoBloc(),
        child: const AutoRouter(),
      );
}
