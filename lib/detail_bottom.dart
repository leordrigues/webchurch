import 'package:app_igreja/group.dart';
import 'package:flutter/material.dart';

class DetailBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      
            //width: 0,
            height: 200,
            color: Colors.grey [290],            
            child: ListView(  
              padding: const EdgeInsets.only(bottom: 60,),            
              scrollDirection: Axis.horizontal,
              children: <Widget>[ 
                Group(title: "",color: Color(0xFFFE9F00),),
                Group(title: "",color: Color(0xFF6ACA61),),
                Group(title: "",color: Color(0xFF353A50),),
               Group(title: "",color: Color(0xFF27337D),),
                //Group(title: "",color: Color(0xFFFE5440),),
               // Group(title: "",color: Colors.yellow,),
              ],
            ));
  }
}
