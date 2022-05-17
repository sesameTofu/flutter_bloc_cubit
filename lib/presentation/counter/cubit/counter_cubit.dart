import 'package:bloc/bloc.dart';
import 'package:flutter_counter/presentation/counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  void increment() => emit(state.copyWith(count1: state.count1 + 1));

  void incrementWithoutCopyWith() =>
      emit(CounterState(count2: state.count2 + 1));
}
