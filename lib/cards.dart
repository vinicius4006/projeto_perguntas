/*
import 'package:flutter/material.dart';

import 'question.dart';
 

class CardBig extends StatelessWidget {
  const CardBig({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                    Colors.blue,
                    Colors.red,
                  ])),
              child: Column(
                children: <Widget>[
                  (_perguntaSelecionada < perguntas.length - 1) ? 
                  Question(perguntas[_perguntaSelecionada])
                   : 
                  Text(
                    "Agradecemos sua colaboração",
                    style: TextStyle(fontSize: 45,),
                  ),
                  ElevatedButton(
                    onPressed: () => _responder(),
                    child: Text(
                      "PETR4",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => _responder(),
                    child: Text(
                      "RANI3",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => _responder(),
                    child: Text(
                      "VIIA3",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Card(
                    child: Text("$_perguntaSelecionada"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _perguntaSelecionada = 0;
                      });
                      },
                    child: Text(
                      "Zerar",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            );
  }
}*/ 