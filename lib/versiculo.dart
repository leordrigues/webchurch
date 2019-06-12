import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Versiculo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.all (Radius.circular(10.0))),
            alignment: Alignment.topLeft,
            child: Text("oi noix"),
      ),
    );
  }
}
