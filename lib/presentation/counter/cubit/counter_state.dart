class CounterState {
  final int count1;
  final int count2;

  const CounterState({
    this.count1 = 0,
    this.count2 = 0,
  });

  CounterState copyWith({int? count1, int? count2}) {
    return CounterState(
      count1: count1 ?? this.count1,
      count2: count2 ?? this.count2,
    );
  }
}
