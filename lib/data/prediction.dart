import 'package:customer_feedback_analysis/model/prediction_detail.dart';

class Data{

  List<PredictionDetail> getPrediction(){
    final List<PredictionDetail> chartData = [
      PredictionDetail(polarity: 'Positive', probability: 60, predDetailId: '001', text: '', item: 1),
      PredictionDetail(polarity: 'Positive', probability: 25, predDetailId: '002', text: '', item: 1),
      PredictionDetail(polarity: 'Positive', probability: 15, predDetailId: '003', text: '', item: 1),
    ];
    return chartData;
  }
}