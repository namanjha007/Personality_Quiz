import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';
class quiz extends StatelessWidget {
  final List <Map<String, Object>> xx;
  final Function yy;
  final int zz ;
  quiz({
    @required this.xx, 
    @required this.yy, 
    @required this.zz});
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Questions(
            xx[zz]['question']
            ),

         ...(xx[zz]['answers'] as List<Map<String, Object>>).map((answer){
           return Answers(()=>yy(answer['score']),answer['text'],);
         }).toList()
        ],
    );
  }
}