// import 'package:authentication_repository/authentication_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:tdd_architecture_course/core/dio/http_app.dart';
import 'package:tdd_architecture_course/core/service_locator.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:tdd_architecture_course/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:tdd_architecture_course/utils/utilities.dart';
// import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
// import 'package:user_repository/user_repository.dart';
import 'package:user_repository/user_repository.dart';

void main() async {
  // Bloc.observer = const CounterObserver();
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getTemporaryDirectory());
  await setUpServiceLocator();
  serviceLocator<HttpApp>().initial();
  runApp(
    MyApp(),
  );
}

/******** Config app with Provider *********/
class MyApp extends StatelessWidget {
  final AppRoute _appRouter = AppRoute();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
        create: (_) => AuthenticationBloc(),
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
          return MaterialApp.router(
            title: 'Clean Architect Flutter',
            routerConfig: _appRouter.config(),
            debugShowCheckedModeBanner: false,
          );
        }));
    // final AuthenticationRepository _authenticationRepository =
    //     AuthenticationRepository();
    // return MultiRepositoryProvider(
    //     providers: [
    //       RepositoryProvider.value(
    //         value: _authenticationRepository,
    //       ),
    //       RepositoryProvider.value(value: _userRepository)
    //     ],
    //     child: BlocProvider<AuthenticationBloc>(
    //       create: (_) => AuthenticationBloc(
    //           // authenticationRepository: _authenticationRepository,
    //           _userRepository: _userRepository),
    //       child: MaterialApp.router(
    //         title: 'Clean Architect Flutter',
    //         routerConfig: _appRouter.config(),
    //         debugShowCheckedModeBanner: false,
    //       ),
    //     ));
  }
}

/******** Config app with  Bloc Provider *********/
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

  // @override
  // Widget build(BuildContext context) {
  //   return MultiRepositoryProvider(
  //       providers: [
  //         RepositoryProvider.value(
  //           value: _authenticationRepository,
  //         ),
  //         RepositoryProvider.value(value: _userRepository)
  //       ],
  //       child: BlocProvider<AuthenticationBloc>(
  //         create: (_) => AuthenticationBloc(
  //             authenticationRepository: _authenticationRepository,
  //             userRepository: _userRepository),
  //         child: MaterialApp.router(
  //           title: 'Clean Architect Flutter',
  //           routerConfig: _appRouter.config(),
  //           debugShowCheckedModeBanner: false,
  //         ),
  //       ));
  // }
// }
