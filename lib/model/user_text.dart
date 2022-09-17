class UserText{
  UserText({
    required this.text,
    this.polarity,
    this.aspect,
    this.probability

  });

  String text;
  String? aspect;
  String? polarity;
  double? probability;

}