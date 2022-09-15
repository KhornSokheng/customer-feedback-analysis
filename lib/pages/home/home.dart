import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // use this controller to get what user typed
  final _textController = TextEditingController();

  // store user input text
  String userText = "";

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              TextField(
                maxLines: 3,
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: "Write something to analyze the sentiment",
                  border: OutlineInputBorder(),
                  // suffixIcon: IconButton(
                  //     onPressed: (){
                  //       //clear the textfield
                  //       _textController.clear();
                  //     },
                  //     icon: Icon(Icons.clear)
                  // )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: (){
                    //update user input string
                    setState(() {
                      userText = _textController.text;
                    });
                  },
                  color: Colors.green[300],
                  child: const Text("Analyze",
                    style: TextStyle(
                      color: Colors.white,

                    ),
                  ),

                ),
              ),
              Container(
                color: Colors.amberAccent,
                height: screenSize.height*1.5,
                width: screenSize.width,
                child: Text(userText),

              )
          ]
          ),
        ),
      ),
    );
  }
}
