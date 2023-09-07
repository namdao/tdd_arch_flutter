// import 'package:authentication_repository/authentication_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
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

  runApp(
    const MyApp(),
  );
}

// /******** Config app with Provider *********/
// class MyApp extends StatelessWidget {
//   final AppRoute _appRouter = AppRoute();
//   late AuthenticationRepository _authenticationRepository;
//   late UserRepository _userRepository;

//   MyApp({super.key}) {
//     _authenticationRepository = AuthenticationRepository();
//     _userRepository = UserRepository();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return RepositoryProvider.value(
//         value: _authenticationRepository,
//         child: BlocProvider(
//             create: (_) => AuthenticationBloc(
//                 authenticationRepository: _authenticationRepository,
//                 userRepository: _userRepository),
//             child: MaterialApp.router(
//               themeMode: ThemeMode.light,
//               title: 'Clean Architect Flutter',
//               routerConfig: _appRouter.config(),
//             )));
//   }
// }

/******** Config app with  Bloc Provider *********/
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _AppState();
}

class _AppState extends State<MyApp> {
  late final AuthenticationRepository _authenticationRepository;
  late final UserRepository _userRepository;
  final AppRoute _appRouter = AppRoute();
  @override
  void initState() {
    super.initState();
    _authenticationRepository = AuthenticationRepository();
    _userRepository = UserRepository();
  }

  @override
  void dispose() {
    _authenticationRepository.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //     title: 'Clean Architect Flutter',
    //     routerConfig: _appRouter.config(),
    //     debugShowCheckedModeBanner: false);
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider.value(
            value: _authenticationRepository,
          ),
          RepositoryProvider.value(value: _userRepository)
        ],
        child: BlocProvider<AuthenticationBloc>(
          create: (_) => AuthenticationBloc(
              authenticationRepository: _authenticationRepository,
              userRepository: _userRepository),
          child: MaterialApp.router(
            title: 'Clean Architect Flutter',
            routerConfig: _appRouter.config(),
            debugShowCheckedModeBanner: false,
          ),
        ));
  }
}
