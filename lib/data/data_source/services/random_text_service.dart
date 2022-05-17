import 'package:flutter_counter/models/random_text/random_text_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'random_text_service.g.dart';

@RestApi(baseUrl: "https://cat-fact.herokuapp.com")
abstract class RandomTextService {
  factory RandomTextService(Dio dio, {String baseUrl}) = _RandomTextService;

  @GET("/facts/random")
  Future<RandomTextModel> getRandomTextModel();
}
