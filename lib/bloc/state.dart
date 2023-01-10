import 'package:bloc_tutorial/colors_pallates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) {
      print('================= START =================');
      print('Cubit change: $change');
      print('================= END =================');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('================= START =================');
    print('Transition change: $transition');
    print('================= END =================');
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(pallates[0].theme);

  final List<ColorsPalette> _colorsPallate = pallates;

  void toggleTheme(String pallateKey) {
    for (final pallate in _colorsPallate) {
      if (pallate.key == pallateKey) {
        emit(pallate.theme);
      }
    }
  }
}

abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementCounter>((event, emit) => emit(state + 1));
    on<DecrementCounter>((event, emit) => emit(state - 1));
  }
}
