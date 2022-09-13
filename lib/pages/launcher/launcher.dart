import 'package:customer_feedback_analysis/pages/home/home.dart';
import 'package:flutter/cupertino.dart';

class Launcher extends StatefulWidget {
  const Launcher({Key? key}) : super(key: key);

  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
