import 'package:bloc/bloc.dart';
import 'package:flutter_counter/presentation/gumball/cubit/filter.dart';
import 'package:flutter_counter/presentation/gumball/cubit/gumball_machines_state.dart';

class GumballMachinesCubit extends Cubit<GumballMachinesState> {
  late IState soldOutState;
  late IState noQuarterState;
  late IState hasQuarterState;
  late IState soldState;
  late IState Istate;

  int count = 0;
  int numberGumballs = 5;

  GumballMachinesCubit() : super(GumballMachinesInitial()) {
    Istate = NoQuarterState(gumballMachine: this);
    soldOutState = SoldOutState(gumballMachine: this);
    noQuarterState = NoQuarterState(gumballMachine: this);
    hasQuarterState = HasQuarterState(gumballMachine: this);
    soldState = SoldState(gumballMachine: this);
  }
  void setState(IState state) {
    this.Istate = state;
  }

  void insertQuarter() {
    Istate.insertQuarter();
  }

  void ejectQuarter() {
    Istate.ejectQuarter();
  }

  void turnCrank() {
    Istate.turnCrank();
    Istate.dispense();
  }

  void releaseBall() {
    print("A gumball comes rolling out the slot...");
    if (count != 0) {
      count = count - 1;
    }
  }

  getHasQuarterState() {
    Istate = hasQuarterState;
  }

  getNoQuarterState() {
    Istate = noQuarterState;
  }

  getSoldState() {
    Istate = soldState;
  }

  getCount() {
    count++;
    emit(GumballMachinesState(count: count));
  }

  getSoldOutState() {
    Istate = soldOutState;
  }

  initial() {
    print('Inventory: $numberGumballs gumballs');
    print('Machine is waiting for quarter...');
  }
}
