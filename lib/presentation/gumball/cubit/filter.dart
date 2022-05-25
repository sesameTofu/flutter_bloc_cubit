import 'package:flutter_counter/presentation/gumball/cubit/gumball_machines_cubit.dart';

abstract class IState {
  insertQuarter() {}
  ejectQuarter() {}
  turnCrank() {}
  dispense() {}
}

class SoldOutState implements IState {
  GumballMachinesCubit gumballMachine;
  SoldOutState({required this.gumballMachine});

  void insertQuarter() {
    print('You inserted a quarter 1');
  }

  void ejectQuarter() {
    print('You haven’t inserted a quarter');
  }

  void turnCrank() {
    print('You turned, but there’s no quarter');
  }

  void dispense() {
    print('You need to pay first');
  }
}

class NoQuarterState implements IState {
  GumballMachinesCubit gumballMachine;

  NoQuarterState({required this.gumballMachine});

  void insertQuarter() {
    gumballMachine.count++;
    print('You inserted a quarter 2');
    if (gumballMachine.count != 0) {
      gumballMachine.setState(HasQuarterState(gumballMachine: gumballMachine));
    }
  }

  void ejectQuarter() {
    print('You haven’t inserted a quarter');
  }

  void turnCrank() {
    print('You turned, but there’s no quarter');
  }

  void dispense() {
    print('You need to pay first');
  }
}

class HasQuarterState implements IState {
  GumballMachinesCubit gumballMachine;
  HasQuarterState({required this.gumballMachine});

  void insertQuarter() {
    print('“You can’t insert another quarter');
  }

  void ejectQuarter() {
    print('“Quarter returned');
    gumballMachine.setState(gumballMachine.getNoQuarterState());
  }

  void turnCrank() {
    print('You turned...');
    gumballMachine.setState(gumballMachine.getSoldState());
  }

  void dispense() {
    print('You need to pay first');
  }
}

class SoldState implements IState {
  GumballMachinesCubit gumballMachine;
  SoldState({required this.gumballMachine});

  void insertQuarter() {
    print('“Please wait, we’re already giving you a gumball');
  }

  void ejectQuarter() {
    print('Sorry, you already turned the crank');
  }

  void turnCrank() {
    print('Turning twice doesn’t get you another gumball!');
  }

  void dispense() {
    gumballMachine.releaseBall();
    if (gumballMachine.getCount() > 0) {
      gumballMachine.setState(gumballMachine.getNoQuarterState());
    } else {
      print("Oops, out of gumballs!");
      gumballMachine.setState(gumballMachine.getSoldOutState());
    }
  }
}
