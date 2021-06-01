import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
      'thank you'
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
          Answer(_answer),
          Answer(_answer),
          Answer(_answer),
          Answer(_answer),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('next page is not available yet');
        },
        child: Icon(
          Icons.forward,
        ),
        backgroundColor: Colors.green[600],
      ),
    );
  }
}
