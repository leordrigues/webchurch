import 'package:app_igreja/group.dart';
import 'package:flutter/material.dart';

class DetailBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
            //width: 0,
            height: 150,
            color: Colors.grey [290],            
            child: ListView(  
              padding: const EdgeInsets.only(bottom: 50,),            
              scrollDirection: Axis.horizontal,
              children: <Widget>[ 
                Group(title: "Ola",color: Color(0xFFFE9F00), ),
                Group(title: "Estou",color: Color(0xFF6ACA61),),
                Group(title: "Testando",color: Color(0xFF353A50),),
                Group(title: "O App",color: Color(0xFF27337D),),
                Group(title: "Church",color: Color(0xFFFE5440),),
                //Group(title: "abcd",color: Colors.blue,),
                
              ],
            ));
  }
}
