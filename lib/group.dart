import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  final String title;
  final Color color;

  const Group({Key key, this.title, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(          
          borderRadius: BorderRadius.circular(19.0), //borda no objeto
          color: color,          
          boxShadow: <BoxShadow>[  //COLOCAR UMA SOMBRA NO OBJETO 
            BoxShadow(            
              color: Colors.black.withOpacity(0.8),
              offset: Offset(5.5,5.5),
              blurRadius: 10     //ATE AQUI       
            )
          ],        
          //border: Border.all( 
          //width: 0.5,
          );
    return  Container(
          width: 130,
          margin: const EdgeInsets.symmetric(horizontal: 3), //Separação das colunas
          decoration: boxDecoration,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 19.0, fontWeight: FontWeight.w300, color: Colors.white),
      ),
      alignment: Alignment(20.0, 0.0),
    );
  }
}

