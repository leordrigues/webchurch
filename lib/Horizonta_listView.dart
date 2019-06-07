import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    //  appBar: AppBar(
      //  centerTitle: true,        
        backgroundColor: Color(0xFFDAE8F5), //coloquei uma cor no appbar -forçada
        //title: Text(
          //'Aplicativo Igreja',                  
          //textAlign: TextAlign.center,
        //),
      //),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
        height: MediaQuery.of(context).size.height * 0.66, 
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19.0)), //circular o Container
                  color: Color(0xFF4E5685), //quero essa cor #4E5685                
                  child: Container(
                    child: Center(
                        child: Text(
                      numbers[index].toString(),
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    )),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
