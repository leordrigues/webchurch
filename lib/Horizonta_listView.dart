import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  final List<int> numbers = [
    1,
    2,
    3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDAE8F5), //coloquei uma cor no appbar -forçada
      body: Container(
        
        padding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 30.0),
        height: MediaQuery.of(context).size.height * 0.70,
        child: ListView.builder(          
            scrollDirection: Axis.horizontal,
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Container(              
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(                  
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(19.0)), //circular o Container
                  color: Color(0xFF4E5685), // Quero essa cor #4E5685
                  child: Container(                                                            
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 110),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/imag1.jpeg",
                            ),
                            fit: BoxFit.fill //Coloquei Borda na imageem
                            )),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
