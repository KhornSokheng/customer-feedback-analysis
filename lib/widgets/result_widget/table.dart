import 'package:customer_feedback_analysis/data/sample_data.dart';
import 'package:flutter/material.dart';

import '../../model/user_text.dart';

class TableResult extends StatefulWidget {
  // const TableResult({Key? key}) : super(key: key);

  TableResult({
    required this.userTextList
  });
  List<UserText> userTextList;

  @override
  State<TableResult> createState() => _TableResultState();
}

class _TableResultState extends State<TableResult> {
  late List<UserText> userTextList;
  @override
  void initState() {
    userTextList = sampleList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
        headingTextStyle: TextStyle(
            color: Colors.indigo[200],
          // fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        dataRowHeight: 90,
          columns: const [
            // DataColumn(label: Text('No.')),
            DataColumn(label: Text('Text')),
            DataColumn(label: Text('Aspect')),
            DataColumn(label: Text('Polarity')),
            DataColumn(label: Text('Probability')),
          ],
          rows: this.widget.userTextList.map((e) => DataRow(cells: [
            DataCell(Text(e.text)),
            DataCell(Text(e.aspect!)),
            DataCell(Text(e.polarity!,
              style: TextStyle(
                color: e.polarity == 'Positive' ? Colors.green[700] :
                e.polarity == 'Negative'? Colors.red[700] : Colors.amber[700]
              ),
            )),
            DataCell(Text(e.probability.toString())),

          ])).toList(),
      ),
    );
  }
}

