import 'package:app_igreja/mainmenu.dart';
import 'package:app_igreja/versiculo.dart';
import 'package:flutter/material.dart';

class Menugeral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(flex: 2,
        child: MainMenu(),//chamei a classe dos grid
        ),
SizedBox(height: 10.0,),
Expanded(flex: 1,
child: Container( 
  padding: EdgeInsets.all(30), 
  child: Text("ola estou testando"),
  color: Colors.yellow,
  height: 50,
  width: 50,
),
)
      ],
    );
  }
}
