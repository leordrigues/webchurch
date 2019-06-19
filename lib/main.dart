import 'package:app_igreja/Horizonta_listView.dart';
import 'package:app_igreja/detail_bottom.dart';
//import 'package:app_igreja/mainmenu.dart';
import 'package:app_igreja/menugeral.dart';
import 'package:flutter/material.dart';
//import 'mainmenu.dart';
import 'celula.dart';
import 'pessoas.dart';
import 'menugeral.dart';
//import 'telafoto.dart';
import 'usuario.dart';

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
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFE8E8F0),
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
              onPressed: () {                
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return Usuario(); //chamando a tela menu
             }));
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter, // Retangulo azul
            child: MainScreen(),
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
