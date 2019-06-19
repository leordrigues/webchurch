import 'package:app_igreja/mainmenu.dart';
//import 'package:app_igreja/versiculo.dart';
import 'package:flutter/material.dart';


 

class Menugeral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFDAE8F5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: MainMenu(), //chamei a classe dos grid
            ),
            SizedBox(
              height: 90.0,
            ), //dividindo as colunas
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFE9F00), //cor do quadrado amarelo
                    borderRadius: BorderRadius.circular(30.0)),
                padding: EdgeInsets.all(25),
                child: Text(
                  " Mas graças a Deus, que nos dá a vitória por meio de nosso Senhor Jesus Cristo 1Coríntios 15:57  ",
                  style: TextStyle(color: Colors.white, fontSize: 30 ),
                  textAlign: TextAlign.center,                  
                ),
              ),
            )
          ],
        ));
  }
}
