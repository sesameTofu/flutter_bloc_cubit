import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/presentation/gumball/cubit/gumball_machines_cubit.dart';
import 'package:flutter_counter/presentation/gumball/cubit/gumball_machines_state.dart';

class GumballMachineScreen extends StatelessWidget {
  final bloc = GumballMachinesCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GumballMachinesCubit, GumballMachinesState>(
        bloc: bloc..initial(),
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      bloc.insertQuarter();
                    },
                    child: Text('Insert Quarter')),
                ElevatedButton(
                    onPressed: () {
                      bloc.ejectQuarter();
                    },
                    child: Text('Eject Quarter')),
                ElevatedButton(
                    onPressed: () {
                      bloc.turnCrank();
                    },
                    child: Text('Turn Crank')),
                ElevatedButton(onPressed: () {}, child: Text('Insert Quarter')),
              ],
            ),
          );
        },
      ),
    );
  }
}
