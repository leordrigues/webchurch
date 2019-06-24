import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/material.dart' as prefix0;
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
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
        height: MediaQuery.of(context).size.height * 0.65,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(19.0)), //circular o Container
                  color: Color(0xFF008080), // Quero essa cor #4E5685
                  child: Center(
                    child: Container(
                      child: Image.network(
                          "https://s3.amazonaws.com/celula-uploads/posts/564ccc63bb55972a6763d897/f235b889/600"),
                      //Text(
                      //"ola teste ola",
                      //textAlign: TextAlign.center,
                      //style: TextStyle(
                      //  color: Colors.white,
                      //fontWeight: FontWeight.bold,
                      //fontSize: 30),
                      // ),
                      margin: EdgeInsets.fromLTRB(9, 9, 10, 110),
                      //decoration: BoxDecoration(
                      //  image: DecorationImage(
                      //    image: AssetImage(
                      // "assets/imag1.jpeg",
                    ),
                    // fit: BoxFit.fill //Coloquei Borda na imageem
                    // )),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
