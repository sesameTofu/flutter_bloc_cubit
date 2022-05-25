class GumballMachinesState {
  final int count;
  GumballMachinesState({this.count = 0});

  // GumballMachinesState copyWith({int? count}) {
  //   return GumballMachinesState(
  //     count: count ?? this.count,
  //   );
  // }
}

class GumballMachinesInitial extends GumballMachinesState {}

class GetQuarterSuccess extends GumballMachinesState {}
