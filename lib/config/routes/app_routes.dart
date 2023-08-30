import 'package:auto_route/auto_route.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:tdd_architecture_course/config/routes/auth_guard.dart';

// part 'app_routes.gr.dart';
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRoute extends $AppRoute {
  AppRoute(this.authService);
  final AuthProviderApp authService;

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
          guards: [AuthGuardApp(authService)],
          path: '/',
          page: HomeScreen.page,
          children: [
            // Should be Bottom stack
            AutoRoute(path: 'bottomTabs', page: BottomTabRoute.page, children: [
              AutoRoute(
                initial: true,
                path: 'characters',
                page: CharacterScreens.page,
              ),
              AutoRoute(
                path: 'child',
                page: CharacterDetailScreens.page,
              ),
            ]),
            AutoRoute(page: CounterPage.page, path: 'counter'),
            AutoRoute(page: TimerPage.page, path: 'page1'),
          ]),
      // Stack Authenticate (public page)
      AutoRoute(
          page: Authenticate.page,
          path: '/auth',
          keepHistory: false,
          children: [
            AutoRoute(page: LoginScreens.page, path: ''),
            AutoRoute(page: RegisterScreens.page, path: 'register')
          ])
    ];
  }
}

@RoutePage(name: 'BottomTabRoute')
class BottomTabPage extends AutoRouter {
  const BottomTabPage({super.key});
}

@RoutePage(name: 'Authenticate')
class AuthenticatePage extends AutoRouter {
  const AuthenticatePage({super.key});
}
