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
                Group(title: "Josi",color: Colors.orange, ),
                Group(title: "Estou",color: Colors.green,),
                Group(title: "Testando",color: Colors.indigo,),
                Group(title: "O App",color: Colors.blue,),
                Group(title: "Church",color: Colors.indigo,),
                //Group(title: "abcd",color: Colors.blue,),
                
              ],
            ));
  }
}
