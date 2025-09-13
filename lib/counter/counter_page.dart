import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter with BLoC'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Counter: ${state.value}',
                  style: TextStyle(fontSize: 48, color: state.color),
                );
              },
            ),
            const SizedBox(height: 20),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return TextField(
                  onChanged: (text) {
                    context.read<CounterBloc>().add(CounterTextChanged(text));
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Escribe algo',
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Texto: ${state.text}',
                  style: TextStyle(fontSize: 24, color: state.color),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () =>
                context.read<CounterBloc>().add(CounterIncremented()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () =>
                context.read<CounterBloc>().add(CounterDecremented()),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: () => context.read<CounterBloc>().add(CounterReset()),
            tooltip: 'Reset',
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
