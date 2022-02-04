import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  //const Answer({ Key? key }) : super(key: key);
  final String texto;
  final void Function()? showAnswer;
  
  Answer(this.texto, this.showAnswer);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
                  onPressed: showAnswer,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                    
                  ),
                  child: Text(
                    texto,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
    );
              
  }
}

