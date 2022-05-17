import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_counter/data/data_source/services/random_text_service.dart';
import 'package:flutter_counter/presentation/random_text/cubit/random_text_state.dart';

class RandomTextCubit extends Cubit<RandomTextState> {
  RandomTextCubit() : super(RandomTextState());

  Future<void> getRandomText() async {
    final randomTextService = RandomTextService(Dio());
    final data = await randomTextService.getRandomTextModel();
    emit(state.copyWith(text: data.text));
  }
}
