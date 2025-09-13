import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object?> get props => [];
}

class CounterIncremented extends CounterEvent {}

class CounterDecremented extends CounterEvent {}

class CounterReset extends CounterEvent {}

class CounterTextChanged extends CounterEvent {
  final String newText;
  const CounterTextChanged(this.newText);

  @override
  List<Object?> get props => [newText];
}
