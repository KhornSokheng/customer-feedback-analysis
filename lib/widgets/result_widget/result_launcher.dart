import 'package:customer_feedback_analysis/widgets/result_widget/donut.dart';
import 'package:customer_feedback_analysis/widgets/result_widget/stacked_bar.dart';
import 'package:customer_feedback_analysis/widgets/result_widget/table.dart';
import 'package:customer_feedback_analysis/widgets/result_widget/word_cloud.dart';
import 'package:flutter/material.dart';

class ResultLauncher extends StatefulWidget {
  const ResultLauncher({Key? key}) : super(key: key);

  @override
  State<ResultLauncher> createState() => _ResultLauncherState();
}

class _ResultLauncherState extends State<ResultLauncher> with SingleTickerProviderStateMixin
{

  late TabController controller;

  @override
  void initState() {

    super.initState();
    controller = TabController(length: 4, vsync: this);
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
      // color: Colors.amberAccent,
      height: screenSize.height*1.5,
      width: screenSize.width,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.deepOrangeAccent,
            indicatorColor: Colors.deepOrangeAccent,
            // automaticIndicatorColorAdjustment: true,
            // indicatorWeight: 3,
            isScrollable: true,
            controller: controller,
            tabs: [
              Tab(text: 'Table',),
              Tab(text: 'Word Cloud',),
              Tab(text: 'Donut',),
              Tab(text: 'Stacked Bar',),
            ],

          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                TableResult(),
                WordCloud(),
                Donut(),
                StackedBar()
              ],

            ),
          )
        ],
      ),
    );
  }
}
