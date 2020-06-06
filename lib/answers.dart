import 'package:flutter/material.dart';
class Answers extends StatelessWidget {
  final Function selectionHandler;
  String answerReciever;

  Answers(this.selectionHandler, this.answerReciever);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:RaisedButton(
        textColor: Colors.white,
            color: Colors.blue,
            child: Text(answerReciever),
            onPressed: selectionHandler,),
    );
  }
}