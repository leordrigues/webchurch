import 'package:flutter/material.dart';

class Telafoto extends StatelessWidget {
  final List<int> numbers = [1, 2, 3,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 30.0),
        height: MediaQuery.of(context).size.height * 0.65,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: Color(0xFF4E5685), //cor no retangulo 
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
