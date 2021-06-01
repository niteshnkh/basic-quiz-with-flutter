import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;

  void _answer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'this is first question',
      'this is second question',
      'this is third question',
      'this is fourth question',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ'),
        backgroundColor: Colors.green[600],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Question(question[_questionIndex]),
          ElevatedButton(
              onPressed: _answer,
              child: Text('option1'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green[600]
              ),
          ),
          ElevatedButton(
            onPressed: _answer,
            child: Text('option1'),
            style: ElevatedButton.styleFrom(
                primary: Colors.green[600]
            ),
          ),
          ElevatedButton(
            onPressed: _answer,
            child: Text('option1'),
            style: ElevatedButton.styleFrom(
                primary: Colors.green[600]
            ),
          ),
          ElevatedButton(
            onPressed: _answer,
            child: Text('option1'),
            style: ElevatedButton.styleFrom(
                primary: Colors.green[600]
            ),
          )
        ],
      ),
    );
  }
}
