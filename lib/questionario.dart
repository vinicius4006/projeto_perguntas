

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/question.dart';
import 'package:projeto_perguntas/respostas.dart';

class Questionario extends StatelessWidget {
  //const Questioario({ Key? key }) : super(key: key);

  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) showAnswer;
  

  Questionario({

    required this.perguntaSelecionada, 
    required this.perguntas, 
    required this.showAnswer,

    });
     bool get temPerguntaSelecionada{
    return perguntaSelecionada < perguntas.length;
  }
  var as;

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada ? 
    perguntas[perguntaSelecionada].cast()["respostas"] : [];
  

    return Column(
            children: <Widget>[
              (perguntaSelecionada < perguntas.length)
                  ? Question(perguntas[perguntaSelecionada]["texto"].toString())
                  : Question("Finalizado"),
                 
              ...respostas.map((answer) 
              => Answer(answer["texto"].toString(), () => showAnswer(int.parse(answer["score"].toString()))))
              .toList(),
            ],
          );
  }
}