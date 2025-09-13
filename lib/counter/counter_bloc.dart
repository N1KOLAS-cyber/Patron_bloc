import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // Lista de colores
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
  ];

  CounterBloc()
      : super(const CounterState(value: 0, color: Colors.red, text: '')) {
    // Incrementar
    on<CounterIncremented>((event, emit) {
      final nextValue = state.value + 1;
      final nextColor = colors[nextValue % colors.length];
      emit(state.copyWith(value: nextValue, color: nextColor));
    });

    // Decrementar
    on<CounterDecremented>((event, emit) {
      final nextValue = state.value - 1;
      final nextColor = colors[nextValue.abs() % colors.length];
      emit(state.copyWith(value: nextValue, color: nextColor));
    });

    // Resetear
    on<CounterReset>((event, emit) {
      emit(state.copyWith(value: 0, color: Colors.red, text: ''));
    });

    // Cambiar texto
    on<CounterTextChanged>((event, emit) {
      emit(state.copyWith(text: event.newText));
    });
  }
}
