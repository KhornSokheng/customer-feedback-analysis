import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Senalyzer',
      logo: AssetImage('assets/images/senalyzer.png'),
      onLogin: (LoginData ) {  },
      onSignup: (signupData){},
      onRecoverPassword: (String ) {  },

    );
  }
}
