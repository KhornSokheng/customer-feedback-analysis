import 'package:customer_feedback_analysis/pages/authentication/login.dart';
import 'package:customer_feedback_analysis/pages/launcher/launcher.dart';
import 'package:flutter/cupertino.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLogIn = true;

    return isLogIn ? Launcher() : Login();
  }
}
