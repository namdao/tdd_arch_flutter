import 'dart:async';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn(
    String phoneNumber,
    String otp,
  ) async {
    _controller.add(AuthenticationStatus.authenticated);
    // await Future.delayed(const Duration(milliseconds: 300), () {
    //   return _controller.add(AuthenticationStatus.authenticated);
    // });
  }

  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
