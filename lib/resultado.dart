import 'package:flutter/material.dart';
import 'questionario.dart';
class Resultado extends StatelessWidget {
  //const Resultado({ Key? key }) : super(key: key);

  final score;
  Resultado(this.score);

  String? get fraseResultado {
    if (score < 25 ){
      return "Good";
    } else if(score > 27){
      return "Awesome";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Text(
                  "Parabéns $fraseResultado",
                  style: TextStyle(fontSize: 28),
                ),
              ],
            );
  }
}