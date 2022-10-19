import 'package:flutter/material.dart';

import '../../model/team.dart';

class TeamReport extends StatefulWidget {
  TeamReport({
    required this.teamList
  });
  List<Team> teamList;

  @override
  State<TeamReport> createState() => _TeamReportState();
}

class _TeamReportState extends State<TeamReport> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.2, vertical: 20),
        // color: Colors.blueAccent,
        child: DataTable(
          headingTextStyle: TextStyle(
              color: Colors.indigo[200],
              // fontSize: 30,
              fontWeight: FontWeight.bold
          ),
          dataRowHeight: 90,
          columns: const [
            DataColumn(label: Text('Team ID')),
            DataColumn(label: Text('Team Name')),
            DataColumn(label: Text('Status')),
          ],
          rows: this.widget.teamList.map((e) => DataRow(cells: [
            DataCell(Text(e.teamId)),
            DataCell(Text(e.teamName
              ),
            ),
            DataCell(Text(e.teamStatus!)),

          ])).toList(),
        ),
      ),
    );
  }
}
