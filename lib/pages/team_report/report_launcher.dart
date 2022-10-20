import 'package:customer_feedback_analysis/pages/team_report/member_report.dart';
import 'package:customer_feedback_analysis/pages/team_report/task_report.dart';
import 'package:customer_feedback_analysis/pages/team_report/team/team_report.dart';
import 'package:flutter/material.dart';

import '../../model/team.dart';
import '../../data/sample_data.dart' as sample;

class ReportLauncher extends StatefulWidget {
  const ReportLauncher({Key? key}) : super(key: key);

  @override
  State<ReportLauncher> createState() => _ReportLauncherState();
}

class _ReportLauncherState extends State<ReportLauncher>  with SingleTickerProviderStateMixin
{

  late TabController controller;
  List<Team> teamList = sample.teamList;

  @override
  void initState() {

    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();

    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(8),
      // color: Colors.amberAccent,
      height: screenSize.height*0.83,
      width: screenSize.width*0.8,
      child: Column(
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            shadowColor: Colors.black,
            child: Container(
              // color: Colors.indigo,
              // padding: EdgeInsets.zero,
              // margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigo
              ),
              child: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.orange
                ),
                // padding: const EdgeInsets.all(5),
                // labelColor: Colors.deepOrangeAccent,
                // indicatorColor: Colors.deepOrangeAccent,
                // automaticIndicatorColorAdjustment: true,
                // indicatorWeight: 3,
                isScrollable: true,
                controller: controller,
                tabs: const [
                  Tab(text: 'Team',),
                  Tab(text: 'Member',),
                  Tab(text: 'Task',),
                ],

              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                TeamReport(teamList: teamList,),
                MemberReport(),
                TaskReport()
              ],

            ),
          )
        ],
      ),
    );
  }
}
