import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

sealed class CounterEvent {}

final class CounterIncrementPressed extends CounterEvent {}

final class CounterDecrementPressed extends CounterEvent {}

class CounterBloc extends HydratedBloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>(_counterIncrementPressed);
    on<CounterDecrementPressed>(_counterDecrementPressed);
  }

  void _counterIncrementPressed(
      CounterIncrementPressed event, Emitter<int> emit) {
    emit(state + 1);
  }

  void _counterDecrementPressed(
      CounterDecrementPressed event, Emitter<int> emit) {
    emit(state - 1);
  }

  @override
  int fromJson(Map<String, dynamic> json) => json['value'] as int;

  @override
  Map<String, int> toJson(int state) => {'value': state};
}
