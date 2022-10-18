import 'package:customer_feedback_analysis/widgets/result_widget/result_launcher.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ResultLauncher(userText: ' ',)
    );
  }
}
