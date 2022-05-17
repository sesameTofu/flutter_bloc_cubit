import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/presentation/random_text/cubit/random_text_cubit.dart';
import 'package:flutter_counter/presentation/random_text/cubit/random_text_state.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RandomTextScreen extends StatelessWidget {
  const RandomTextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RandomTextCubit, RandomTextState>(
        builder: (context, state) {
          return Center(
            child: Text(
              state.text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: SvgPicture.asset('assets/icon/icon_cat.svg'),
        onPressed: () {
          context.read<RandomTextCubit>().getRandomText();
        },
      ),
    );
  }
}
