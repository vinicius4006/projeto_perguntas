import 'package:flutter/material.dart';
import 'questionario.dart';
class Resultado extends StatelessWidget {
  //const Resultado({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Text(
                  "Parabéns",
                  style: TextStyle(fontSize: 28),
                ),
              ],
            );
  }
}