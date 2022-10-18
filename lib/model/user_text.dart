class UserText{
  UserText({
    required this.text,
    this.polarity,
    this.aspect,
    this.probability,
    this.negativeWord,
    this.positiveWord

  });

  String text;
  String? aspect;
  String? polarity;
  double? probability;
  List<dynamic>? positiveWord=[];
  List<dynamic>? negativeWord=[];

}