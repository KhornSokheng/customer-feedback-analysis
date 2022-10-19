import 'package:customer_feedback_analysis/data/prediction.dart';
import 'package:customer_feedback_analysis/model/prediction_detail.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../model/prediction.dart';

class Donut extends StatefulWidget {
  const Donut({Key? key}) : super(key: key);

  @override
  State<Donut> createState() => _DonutState();
}

class _DonutState extends State<Donut> {

  late List<PredictionDetail> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = Data().getPrediction();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      height: 200,
      width: 200,
      child: Center(
        child: SfCircularChart(
          backgroundColor: Colors.indigo[100],
          title: ChartTitle(text: "Result of the prediction by each polarity"),
          legend: Legend(isVisible: true, overflowMode: LegendItemOverflowMode.scroll),
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            DoughnutSeries<PredictionDetail, String>(
              dataSource: _chartData,
              xValueMapper: (PredictionDetail pred, _) => pred.polarity,
              yValueMapper: (PredictionDetail pred, _) => pred.probability,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
              enableTooltip: true,
            )
          ],

        ),
      ),
    );
  }
}
