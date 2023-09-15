import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class ConnectionFailure extends Failure {
  final int errorCode;
  const ConnectionFailure(String message, this.errorCode) : super(message);
}

class Exception extends Failure {
  const Exception(String message) : super(message);
}
