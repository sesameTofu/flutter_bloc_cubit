class RandomTextState {
  final String text;
  RandomTextState({this.text = ''});

  RandomTextState copyWith({String? text}) {
    return RandomTextState(text: text ?? this.text);
  }
}
