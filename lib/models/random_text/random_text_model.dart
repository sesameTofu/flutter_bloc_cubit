import 'package:json_annotation/json_annotation.dart';

part 'random_text_model.g.dart';

@JsonSerializable()
class RandomTextModel {
  @JsonKey(name: 'text')
  String? text;

  RandomTextModel({this.text});

  factory RandomTextModel.fromJson(Map<String, dynamic> json) =>
      _$RandomTextModelFromJson(json);
  Map<String, dynamic> toJson() => _$RandomTextModelToJson(this);
}
