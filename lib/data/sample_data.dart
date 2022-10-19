import 'package:customer_feedback_analysis/model/prediction_detail.dart';

import '../model/user_text.dart';
import '../model/team.dart';

List<UserText> sampleList = [
  UserText(text: 'Nice view of river but the service is really bad.', aspect: 'Location', polarity: 'Positive', probability: 0.9),
  UserText(text: 'Nice view of river but the service is really bad.', aspect: 'Service', polarity: 'Negative', probability: 0.87),
  UserText(text: 'I just went there yesterday.', aspect: '-', polarity: 'Neutral', probability: 0.9),
  UserText(text: 'Great sushi roll.', aspect: 'Food', polarity: 'Positive', probability: 0.9),
  UserText(text: 'Nice view of river but the service is really bad.', aspect: 'Location', polarity: 'Positive', probability: 0.9),
  UserText(text: 'Nice view of river but the service is really bad.', aspect: 'Service', polarity: 'Negative', probability: 0.87),
  UserText(text: 'I just went there yesterday.', aspect: '-', polarity: 'Neutral', probability: 0.9),
  UserText(text: 'Great sushi roll.', aspect: 'Food', polarity: 'Positive', probability: 0.9),
];

List<PredictionDetail> predictionDetailList = [
  PredictionDetail(text: 'Nice view of river but the service is really bad.', aspect: 'Location', polarity: 'Positive',probability: 0.9, predDetailId: '001',  item: 1),
  PredictionDetail(text: 'Nice view of river but the service is really bad.', aspect: 'Service', polarity: 'Negative', probability: 0.87, predDetailId: '002',  item: 1),
  PredictionDetail(text: 'I just went there yesterday.', aspect: '-', polarity: 'Neutral', probability: 0.9, predDetailId: '003',  item: 1),
  PredictionDetail(text: 'Great sushi roll.', aspect: 'Food', polarity: 'Positive', probability: 0.9, predDetailId: '004',  item: 1),
  PredictionDetail(text: 'Nice view of river but the service is really bad.', aspect: 'Location', polarity: 'Positive', probability: 0.9, predDetailId: '005',  item: 1),
  PredictionDetail(text: 'Nice view of river but the service is really bad.', aspect: 'Service', polarity: 'Negative', probability: 0.87, predDetailId: '006',  item: 1),
  PredictionDetail(text: 'I just went there yesterday.', aspect: '-', polarity: 'Neutral', probability: 0.9, predDetailId: '007',  item: 1),
  PredictionDetail(text: 'Great sushi roll.', aspect: 'Food', polarity: 'Positive', probability: 0.9, predDetailId: '008',  item: 1),
];

List<Team> teamList = [
  Team(teamId: '001', teamName: "Service"),
  Team(teamId: "002", teamName: "Deliver"),
  Team(teamId: "003", teamName: "Cook")
];