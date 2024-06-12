import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/new_counter_bloc.dart';

class ResultWidget extends StatefulWidget {
  const ResultWidget({super.key});

  @override
  State<ResultWidget> createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewCounterBloc, NewCounterState>(
      builder: (context, state) {
        if(state is NewCounterSuccess) {
          return Text(
            state.counter.toString(),
            style: const TextStyle(fontSize: 24),
          );
        }

        if(state is NewCounterLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if(state is NewCounterFailure) {
          state.message.toString();
        }

        return const Text(
          '0',
          style: TextStyle(fontSize: 24),
        );
      },
    );
  }
}