import 'package:app_igreja/versiculo.dart';
import 'package:flutter/material.dart';

class Menugeral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Container(
        width: 200,
        height: 200,
        child: Versiculo(),
      ),
    );
  }
}
