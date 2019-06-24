import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(      
      backgroundColor: Color(0xFFDAE8F5),    
      body: new GridView.count(
        crossAxisCount: 3,
        children: new List<Widget>.generate(9, (index) {
          return new GridTile(
            child: Card(              
              color: Color(0xFF008080),
              child: const Icon(Icons.home),               
              )          
          );
        }),
      ),
    );
  }
}