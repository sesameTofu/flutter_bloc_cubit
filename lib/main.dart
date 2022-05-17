import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/presentation/counter/ui/counter_screen.dart';
import 'package:flutter_counter/presentation/random_text/cubit/random_text_cubit.dart';
import 'package:flutter_counter/presentation/random_text/ui/random_text_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => RandomTextCubit(),
        child: PageView(children: [RandomTextScreen(), CounterScreen()]),
      ),
    );
  }
}
//BlocProvider là một widget cung cấp một bloc để các widget con có thể sử dụng mà ko cần khai báo thông qua BlocProvider.of<T>(context).
