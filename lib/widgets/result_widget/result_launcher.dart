import 'package:customer_feedback_analysis/model/user_text.dart';
import 'package:customer_feedback_analysis/widgets/result_widget/donut.dart';
import 'package:customer_feedback_analysis/widgets/result_widget/stacked_bar.dart';
import 'package:customer_feedback_analysis/widgets/result_widget/table.dart';
import 'package:customer_feedback_analysis/widgets/result_widget/word_cloud.dart';
import 'package:dart_sentiment/dart_sentiment.dart';
import 'package:flutter/material.dart';

class ResultLauncher extends StatefulWidget {
  // const ResultLauncher({Key? key}) : super(key: key);
  ResultLauncher({
    required this.userText
  });
  String userText;

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

    final sentiment = Sentiment();

    // print(sentiment.analysis("The cake she made was terrible 😐"));
    // print(sentiment.analysis("The cake she made was terrible 😐 :)", emoji: true));
    var result =  sentiment.analysis(this.widget.userText, emoji: true);
    print(this.widget.userText);
    print(result);

    UserText predictedText = UserText(text: this.widget.userText,
      probability: result["score"],
      polarity: result["score"] >0 ? "positive": result["score"] < 0 ?"negative":"neutral",
      aspect: "-"
    );


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
                  Tab(text: 'Table',),
                  Tab(text: 'Word Cloud',),
                  Tab(text: 'Donut',),
                  Tab(text: 'Stacked Bar',),
                ],

              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                TableResult(userTextList: [predictedText],),
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
