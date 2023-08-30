// import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.dart';
import 'package:tdd_architecture_course/config/routes/auth_guard.dart';
// import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
// import 'package:user_repository/user_repository.dart';
import 'package:tdd_architecture_course/features/counter/presentation/observer/counter_observer.dart';
import 'package:bloc/bloc.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(
    MyApp(),
  );
}

/******** Config app with Provider *********/
class MyApp extends StatelessWidget {
  late AppRoute _appRouter;
  final authProvider = AuthProviderApp();
  MyApp({super.key}) {
    _appRouter = AppRoute(authProvider);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clean Architect Flutter',
      routerConfig: _appRouter.config(
        reevaluateListenable: authProvider,
      ),
      debugShowCheckedModeBanner: false,
      // theme: appTheme(),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData.light(useMaterial3: true),
      builder: (_, router) {
        return ChangeNotifierProvider(
          create: (_) => authProvider,
          child: router!,
        );
      },
    );
  }
}

// /******** Config app with  Bloc Provider *********/
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _AppState();
// }

// class _AppState extends State<MyApp> {
//   late final AuthenticationRepository _authenticationRepository;
//   late final UserRepository _userRepository;
//   final AppRoute _appRouter = AppRoute();
//   @override
//   void initState() {
//     super.initState();
//     _authenticationRepository = AuthenticationRepository();
//     _userRepository = UserRepository();
//   }

//   @override
//   void dispose() {
//     _authenticationRepository.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return RepositoryProvider.value(
//       value: _authenticationRepository,
//       child: BlocProvider(
//         create: (_) => AuthenticationBloc(
//             authenticationRepository: _authenticationRepository,
//             userRepository: _userRepository),
//         child: MaterialApp.router(
//           title: 'Clean Architect Flutter',
//           routerConfig: _appRouter.config(),
//           debugShowCheckedModeBanner: false,
//         ),
//       ),
//     );
//   }
// }
