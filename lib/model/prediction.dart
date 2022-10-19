class Prediction{
  Prediction({
    required this.prodId,
    this.userId,
    this.date,
    this.inputSource,
    this.model

  });

  String prodId;
  String? userId;
  DateTime? date;
  String? inputSource;
  String? model;


}