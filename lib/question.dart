import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Question({ Key? key }) : super(key: key);
  final String texto;

  Question(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
                 texto,
                 style: TextStyle(
                   fontSize: 28,
                   color: Colors.white,
                 ),
                 textAlign: TextAlign.center,
                 ),
    );
  }
}