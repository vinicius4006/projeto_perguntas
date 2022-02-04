import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "./question.dart";
import 'respotas.dart';

main() => runApp(new PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  //const PerguntaApp({ Key? key }) : super(key: key);
  var _perguntaSelecionada = 0;

  final _perguntas = const [
      {
          "texto": "Ação do Momento:",
          "respostas": ["PETR4", "VALE3", "IRBR3", "RANI3"]
      },
      {
          "texto": "Mais cara?",
          "respostas": ["SUZB3", "GNDI3", "VALE3", "VIIA3"]
      },
      {
          "texto": "Menos valorizada?",
          "respostas": ["MGLU3", "IRBR3", "OIBR3", "BRML3"]
      },
      {
          "texto": "Mais dividendos?",
          "respostas": ["PETR4", "CSNA3", "VALE3", "HASH11"]
      },
       
    ];

  void _responder() {
    if(temPerguntaSelecionada){
        setState(() {
        _perguntaSelecionada++;
    });
    }
    
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    
    //if(_perguntaSelecionada < _perguntas.length){
    List<String> respostas = temPerguntaSelecionada ? 
    _perguntas[_perguntaSelecionada].cast()["respostas"] : [];
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
          Column(
            children: <Widget>[
              (_perguntaSelecionada < _perguntas.length)
                  ? Question(_perguntas[_perguntaSelecionada]["texto"].toString())
                  : Question("Finalizado"),
                 
              ...respostas.map((e) => Answer(e, _responder)).toList(),
            ],
          ) : Center(
            child: Column(
              children: [
                Text(
                  "Parabéns",
                  style: TextStyle(fontSize: 28),
                ),
                Answer(
                  "Reniciar",
                  () => {
                        setState(() => {_perguntaSelecionada = 0})
                      }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
