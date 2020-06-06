import 'package:flutter/material.dart';

import './result.dart';

import './Quiz.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State <_MyApp>
{
  final questio = const [{'question' : 'What is your favourite colour?', 
    'answers': [
      {'text':'Blue', 'score':10},
      {'text':'Red','score' : 7},
       {'text':'Yellow','score':4 },
       {'text':'Green','score':1}]},
    {'question' : 'What is your favourite animal?',
    'answers' : [
      {'text':'Lion','score':10},
    {'text':'Tiger','score':7},
    {'text':'Bear','score':4},
    {'text':'Wolf','score':1}]},
    {'question' : 'What is your favourite food?',
    'answers':[
      {'text':'Pizza','score':10},
      {'text':'Burger','score':7},
      {'text':'Sandwitch','score':4},
      {'text':'Hotdog','score':1}]}];

   var _x = 0,total_score=0;

   void reset()
   {
     setState(() {
        _x = 0;
        total_score = 0;
     });
   }
    void _indexInc(int score){
        total_score = total_score + score;
        setState((){
          _x = _x+1;
        });
    }

    @override
  Widget build(BuildContext context){
    
    return  MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _x<questio.length ?
       quiz(xx : questio, yy : _indexInc, zz : _x)
       : 
       Result(total_score, reset)
    ), 
    );
  }
}