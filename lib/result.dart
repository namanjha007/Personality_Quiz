import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resul_score; 
  final Function resrt;
  Result(this.resul_score, this.resrt);
  String get resultPhase {
    var resultText = 'You did it!';
    if(resul_score<=10)
    {
      resultText = 'You are awesome and innocent';
    }
    else if(resul_score<=15)
    {
      resultText = 'Pretty Likeable!!';
    }
    else if(resul_score<=25)
    {
      resultText = 'You are strange...';
    }
    else{
      resultText = 'Your are bad';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center
    (child : Column(
      children: <Widget>[
        Text(resultPhase,
        style: TextStyle(fontSize: 35,
         fontWeight: FontWeight.bold),
         textAlign: TextAlign.center,),
         FlatButton(child: Text('Restart Quiz!'),
         onPressed: resrt,
         textColor: Colors.blue),

      ],
    ) 
    );
  }
}