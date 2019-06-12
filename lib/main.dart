import 'package:app_igreja/Horizonta_listView.dart';
import 'package:app_igreja/detail_bottom.dart';
//import 'package:app_igreja/mainmenu.dart';
import 'package:app_igreja/menugeral.dart';
import 'package:flutter/material.dart';
//import 'mainmenu.dart';
import 'celula.dart';
import 'pessoas.dart';
import 'menugeral.dart';
//import 'versiculo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(body: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFDAE8F5),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.home),
        onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Menugeral(); //chamando a tela menu
                }));
              },
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Pessoas(); //chamando a tela Pessoas
                }));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.people,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Celula(); //chamando a tela celula
                }));
              },
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
      body: Stack(
        //COLOCAR UMA PILHA - PARTE DE CIMA APP
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
