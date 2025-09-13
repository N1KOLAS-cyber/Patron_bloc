import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

// Estado del contador
class CounterState extends Equatable {
  final int value;
  final Color color;
  final String text;

  const CounterState({
    required this.value,
    required this.color,
    required this.text,
  });

  // Método para copiar el estado con cambios
  CounterState copyWith({
    int? value,
    Color? color,
    String? text,
  }) {
    return CounterState(
      value: value ?? this.value,
      color: color ?? this.color,
      text: text ?? this.text,
    );
  }

  @override
  List<Object?> get props => [value, color, text];
}
