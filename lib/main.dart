import 'package:app_igreja/Horizonta_listView.dart';
import 'package:app_igreja/detail_bottom.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(body: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.home),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 9.0, // Aredondar Barra Principal
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.alarm,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            Expanded(child: new SizedBox()),
            IconButton(
              icon: Icon(
                Icons.business_center,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.perm_identity,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Stack(  //COLOCAR UMA PILHA - PARTE DE CIMA APP
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter, //ALINHAMENTO GRUPOS
            child: MainScreen(), //-aqui ele chamou a tela horizontal
          ),
          Align(
            alignment: Alignment.bottomCenter, //ALINHAMENTO GRUPOS
            child: DetailBottom(),
          ),
        ],
      ),
    );
  }
}
