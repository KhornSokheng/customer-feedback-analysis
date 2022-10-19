import 'package:customer_feedback_analysis/pages/authentication/login.dart';
import 'package:customer_feedback_analysis/pages/authentication/logout.dart';
import 'package:customer_feedback_analysis/pages/authentication/signup.dart';
import 'package:customer_feedback_analysis/pages/history/history.dart';
import 'package:customer_feedback_analysis/pages/home/home.dart';
import 'package:customer_feedback_analysis/pages/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:customer_feedback_analysis/pages/team_report/report_launcher.dart';

class Launcher extends StatefulWidget {
  const Launcher({Key? key}) : super(key: key);

  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> with SingleTickerProviderStateMixin
{

  late TabController controller;

  @override
  void initState() {
    
    super.initState();
    controller = TabController(length: 5, vsync: this);
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SENTIMENT ANALYSIS",
          style: TextStyle(
            letterSpacing: 5
          ),
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: Column(
        children: [
          TabBar(
            labelColor: Colors.indigo,
            automaticIndicatorColorAdjustment: true,
            // indicatorWeight: 3,
            // isScrollable: true,
            controller: controller,
            tabs: [
              Tab(text: "Home",),
              Tab(text: "History",),
              Tab(text: "Profile",),
              Tab(text: "Report",),
              Tab(text: "Login / Sign Up",),
            ],

          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                Home(),
                History(),
                Profile(),
                ReportLauncher(),
                Login()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
