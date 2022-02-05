import 'package:flutter/material.dart';

import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

import 'respostas.dart';

main() => runApp(new PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  //const PerguntaApp({ Key? key }) : super(key: key);
  var _perguntaSelecionada = 0;
  var _scoreTotal = 0;

  final _perguntas = const [
      {
          "texto": "Qual caiu muito?:",
          "respostas": [
            {"texto" : "PETR4", "score": 1},
             {"texto": "VALE3", "score": 1},
              {"texto": "IRBR3", "score": 10},
               {"texto": "RANI3", "score": 5}
            ]
      },
      {
          "texto": "Mais cara?",
          "respostas": [
            {"texto" : "SUZB3", "score": 8}, 
            {"texto" : "GNDI3", "score": 6}, 
            {"texto" : "VALE3", "score": 10}, 
            {"texto" : "VIIA3", "score": 2}
            ]
      },
      {
          "texto": "Menos valorizada?",
          "respostas": [
            {"texto" : "MGLU3", "score": 6}, 
            {"texto" : "IRBR3", "score": 10}, 
            {"texto" : "OIBR3", "score": 9}, 
            {"texto" : "BRML3", "score": 7}
            ]
      },
      {
          "texto": "Mais dividendos?",
          "respostas": [
          {"texto" : "PETR4", "score": 9}, 
          {"texto" : "CSNA3", "score": 10}, 
          {"texto" : "VALE3", "score": 8}, 
          {"texto" : "HASH11", "score": 9}
          ]
      },
       
    ];

  void _responder(int score) {
    if(temPerguntaSelecionada){
        setState(() {
        _perguntaSelecionada++;
        _scoreTotal += score;
    });
    }
    print(_scoreTotal);
  }



  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    
    //if(_perguntaSelecionada < _perguntas.length){
    
    //List<Widget> widgets = 
    //}
    
   // for (String txtResp in ){
     // respostas.add(Answer(txtResp, _responder));
    //  }
    //  }
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          centerTitle: true,
          shadowColor: Colors.red[400],
          backgroundColor: Colors.redAccent,
          leading: Icon(Icons.ac_unit_sharp, color: Colors.orange.shade100),
          title: Text(
            "_Perguntas",
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
          child: temPerguntaSelecionada ? 
          Questionario(
            perguntaSelecionada: _perguntaSelecionada, 
            perguntas: _perguntas, 
            showAnswer: _responder
            ) : 
          Center(
            child: Column(
              children: [
                Resultado(_scoreTotal),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(24.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                  setState(() {
                    _perguntaSelecionada = 0;
                    _scoreTotal = 0;
                  });
                }, child: Text("Reiniciar"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
