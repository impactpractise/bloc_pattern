import 'dart:async';
import 'package:bloc/bloc.dart';

// This bloc covers all the business logic needed for this simple application.
enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  // every bloc needs to override the initial state.
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }
}
