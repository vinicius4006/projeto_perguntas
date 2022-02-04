

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import  "./question.dart";
main() => runApp(new PerguntaApp());

class PerguntaApp extends StatefulWidget {

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  //const PerguntaApp({ Key? key }) : super(key: key);
  var _perguntaSelecionada = 0;

  void _responder(){
    print("Ação selecionada: $_perguntaSelecionada");
    
    setState(() {
      if(_perguntaSelecionada < perguntas.length - 1)
          _perguntaSelecionada++;
      else
        _perguntaSelecionada = _perguntaSelecionada;
        
    });
    
  }

  final List<String> perguntas = [
    "Escolha sua ação:",
    "Mais cara?",
    "Menos valorizada?",
    "Mais dividendos?",
    "Mais rentável?",
  ];

  @override //
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          centerTitle: true,
          shadowColor: Colors.red[400],
          backgroundColor: Colors.redAccent,
          leading: Icon(Icons.ac_unit_sharp, color: Colors.orange.shade100),
          title: Text(
            "Perguntas",
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Colors.blue,
                Colors.red,
              ])),
          child: 
          Column(
            children: <Widget>[
              (_perguntaSelecionada < perguntas.length - 1) ? 
              Question(perguntas[_perguntaSelecionada])
               : 
               Question("Finalizado")
             ,
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
        ),
      ),
    );
  }
}
