class PredictionDetail{
  PredictionDetail({
    required this.predDetailId,
    this.polarity,
    this.probability,
    this.negativeWord,
    this.positiveWord,
    required this.text,
    required this.item,
    this.predId,

    this.aspect,
  });

  String predDetailId;
  String? predId;
  int item;
  String text;
  String? polarity; //positive, negative, neutral
  double? probability;
  List<dynamic>? positiveWord=[];
  List<dynamic>? negativeWord=[];


  String? aspect;

  void setID(String id){
    this.predDetailId = id;
  }

  // to json method
  Map<String, dynamic> toJson() {
    return {
      'predDetailId': predDetailId,
      'predId': predId,
      'item': item,
      // 'password': password,
      'text' : text,
      'polarity' : polarity,
      'probability' : probability,
      // 'positiveWord' : positiveWord,
      // 'negativeWord' : negativeWord,


    };
  }
}