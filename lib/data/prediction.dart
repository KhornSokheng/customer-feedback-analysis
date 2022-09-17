import '../model/prediction.dart';

class Data{

  List<Prediction> getPrediction(){
    final List<Prediction> chartData = [
      Prediction(polarity: 'Positive', percentage: 60),
      Prediction(polarity: 'Negative', percentage: 25),
      Prediction(polarity: 'Neutral', percentage: 15)
    ];
    return chartData;
  }
}