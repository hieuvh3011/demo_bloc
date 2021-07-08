// import 'package:equatable/equatable.dart';
part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int value;
  final String someTestString;

  const CounterState({
    this.value = 0,
    this.someTestString = "",
  });

  CounterState copyWith({
    int? value,
    String? someTestString,
  }) {
    return CounterState(
      value: value ?? this.value,
      someTestString: someTestString ?? this.someTestString,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [value, someTestString];
}
