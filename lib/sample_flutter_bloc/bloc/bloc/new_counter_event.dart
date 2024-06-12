part of 'new_counter_bloc.dart';

@immutable
sealed class NewCounterEvent {}

class NewIncrement extends NewCounterEvent {}

class NewDecrement extends NewCounterEvent {}