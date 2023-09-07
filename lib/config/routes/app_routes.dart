import 'package:auto_route/auto_route.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';

// part 'app_routes.gr.dart';
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRoute extends $AppRoute {
  @override
  List<AutoRoute> get routes {
    return [
      CustomRoute(
        path: '/',
        page: SplashScreen.page,
      ),
      CustomRoute(
        path: '/home',
        page: HomeScreen.page,
        children: [
          AutoRoute(
            path: 'bottomTabs',
            page: BottomTabRoute.page,
            children: [
              AutoRoute(
                initial: true,
                path: 'settings',
                page: SettingPage.page,
              ),
            ],
          ),
          AutoRoute(page: BlocPraticeRoute.page, path: 'bloc', children: [
            AutoRoute(page: BlocPraticePage.page, path: ''),
            AutoRoute(page: CounterPage.page, path: 'counter'),
            AutoRoute(page: TimerPage.page, path: 'timer'),
            AutoRoute(page: PostPage.page, path: 'postsList'),
            AutoRoute(
              page: TodoPages.page,
              path: 'todo',
            ),
          ]),
        ],
        transitionsBuilder: TransitionsBuilders.fadeIn,
        // durationInMilliseconds: 300
      ),
      // Stack Authenticate (public page)
      CustomRoute(
        page: Authenticate.page,
        path: '/auth',
        keepHistory: false,
        children: [
          AutoRoute(page: LoginScreens.page, path: ''),
          AutoRoute(page: RegisterScreens.page, path: 'register')
        ],
        transitionsBuilder: TransitionsBuilders.fadeIn,
        // durationInMilliseconds: 300
      ),
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

@RoutePage(name: 'BlocPraticeRoute')
class BlocPratice extends AutoRouter {
  const BlocPratice({super.key});
}
