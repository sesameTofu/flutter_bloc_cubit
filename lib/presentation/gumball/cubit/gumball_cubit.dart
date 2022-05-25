import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'gumball_state.dart';

class GumballCubit extends Cubit<GumballState> {
  GumballCubit() : super(GumballInitial());
}
