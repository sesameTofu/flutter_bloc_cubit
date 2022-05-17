import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/presentation/counter/cubit/counter_cubit.dart';
import 'package:flutter_counter/presentation/counter/cubit/counter_state.dart';

class CounterScreen extends StatelessWidget {
  final blocCounter = CounterCubit();
  CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterCubit, CounterState>(
        bloc: blocCounter,
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  state.count2.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  state.count1.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            child: Icon(Icons.add),
            onPressed: () {
              blocCounter.incrementWithoutCopyWith();
            },
          ),
          SizedBox(height: 8),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              blocCounter.increment();
            },
          ),
        ],
      ),
    );
  }
}
