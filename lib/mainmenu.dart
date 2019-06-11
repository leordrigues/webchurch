import 'dart:collection';
import 'package:flutter/scheduler.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

class MainMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      //appBar: new AppBar(
        //title: new Text('Tela Nova'),
      //),
      body: new GridView.count(
        crossAxisCount: 3,
        children: new List<Widget>.generate(9, (index) {
          return new GridTile(
            child: new Card(
              color: Color(0xFF4E5685),
              child: new Center(
                child: new Text('tile $index'),
              )
            ),
          );
        }),
      ),
    );
  }
}