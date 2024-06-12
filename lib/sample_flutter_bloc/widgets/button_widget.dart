import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/new_counter_bloc.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<NewCounterBloc>().add(NewDecrement());
          },
          child: const Text('Decrement'),
        ),
        const SizedBox(
          width: 16,
        ),
        ElevatedButton(
          onPressed: () {
            context.read<NewCounterBloc>().add(NewIncrement());
          },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}