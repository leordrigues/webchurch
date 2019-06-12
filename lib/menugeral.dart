import 'package:app_igreja/mainmenu.dart';
//import 'package:app_igreja/versiculo.dart';
import 'package:flutter/material.dart';

class Menugeral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: MainMenu(), //chamei a classe dos grid
        ),
        SizedBox(
          height: 0.0,
        ), //dividindo as colunas
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFE9F00), //cor do quadrado
            borderRadius: BorderRadius.circular(40.0)
            ),
            padding: EdgeInsets.all(30),
            child: Text(
              "ola estou testando",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),            
          ),
        )
      ],
    );
  }
}
