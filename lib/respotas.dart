import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  //const Answer({ Key? key }) : super(key: key);
  final String texto;
  final Function? exeResposta;
  
  Answer(this.texto, this.exeResposta);
  

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
                  onPressed: (){},
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

