import 'package:flutter/material.dart';

class TableResult extends StatefulWidget {
  const TableResult({Key? key}) : super(key: key);

  @override
  State<TableResult> createState() => _TableResultState();
}

class _TableResultState extends State<TableResult> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
          columns: const [
            // DataColumn(label: Text('No.')),
            DataColumn(label: Text('Text')),
            DataColumn(label: Text('Aspect')),
            DataColumn(label: Text('Polarity')),
            DataColumn(label: Text('Probability')),
          ],
          rows: const [
            DataRow(
                cells: [
                  // DataCell(Text('1')),
                  DataCell(Text('This is good')),
                  DataCell(Text('-')),
                  DataCell(Text('Positive')),
                  DataCell(Text('90%')),

                ]
            ),
            DataRow(
                cells: [
                  // DataCell(Text('2')),
                  DataCell(Text('This is really really bad...')),
                  DataCell(Text('-')),
                  DataCell(Text('Negative')),
                  DataCell(Text('90%')),

                ]
            )

          ]),
    );
  }
}

