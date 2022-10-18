import 'package:customer_feedback_analysis/widgets/result_widget/result_launcher.dart';
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
  bool isAnalyze = false;

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: (){
                        //update user input string
                        setState(() {
                          userText = _textController.text;
                          isAnalyze = true;
                        });
                      },
                      color: Colors.indigo,
                      child: const Text("Analyze",
                        style: TextStyle(
                          color: Colors.white,


                        ),
                      ),

                    ),
                    SizedBox(width: 15,),
                    MaterialButton(
                      onPressed: (){
                        //update user input string
                        setState(() {
                          userText = _textController.text;
                          isAnalyze = true;
                        });
                      },
                      color: Colors.blueAccent,
                      child: const Text("Analyze With Twitter",
                        style: TextStyle(
                          color: Colors.white,


                        ),
                      ),

                    ),
                    SizedBox(width: 15,),
                    Visibility(
                      visible: screenSize.width > 700,
                      child: MaterialButton(
                        onPressed: (){
                          //update user input string
                          setState(() {
                            userText = _textController.text;
                            isAnalyze = true;
                          });
                        },
                        color: Colors.green,
                        child: const Text("Import CSV",
                          style: TextStyle(
                            color: Colors.white,


                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
              // Visibility(
              //   visible: isAnalyze,
              //   child: Divider(
              //     color: Colors.blue,
              //   ),
              // ),
              Visibility(
                  visible: isAnalyze,
                  maintainState: true,
                  child: ResultLauncher(userText: userText,)
              )
          ]
          ),
        ),
      ),
    );
  }
}
