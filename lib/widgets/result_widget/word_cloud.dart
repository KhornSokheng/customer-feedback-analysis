import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WordCloud extends StatefulWidget {
  const WordCloud({Key? key}) : super(key: key);

  @override
  State<WordCloud> createState() => _WordCloudState();
}

class _WordCloudState extends State<WordCloud> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage("assets/images/wordcloud.png"),

        
      ),
    );
  }
}
