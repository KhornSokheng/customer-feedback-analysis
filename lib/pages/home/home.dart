import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            TextField(

            decoration: InputDecoration(
              hintText: "Write something to analyze the sentiment",
              border: OutlineInputBorder()
            ),
          )
        ]
        ),
      ),
    );
  }
}
