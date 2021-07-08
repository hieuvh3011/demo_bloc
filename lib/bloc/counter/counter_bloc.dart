import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState());

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is CounterIncrement) {
      yield _increment(state);
    } else if (event is CounterDecrement) {
      yield _decrement(state);
    }
  }

  CounterState _increment(CounterState state) {
    return state.copyWith(value: state.value + 1, someTestString: "");
  }

  CounterState _decrement(CounterState state) {
    return state.copyWith(value: state.value - 1, someTestString: "");
  }
}
