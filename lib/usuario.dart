import 'package:flutter/material.dart';

void main() => runApp(Usuario());

class Usuario extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,   
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF008080),            
            title: Text("Conta de usuário"),
          ),
         body: HomeWidget()),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFDAE8F5),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            child: ClipOval(
              child: Image.network(
                "https://s3-sa-east-1.amazonaws.com/celula-avatars/5b1ebdad4897eba9698029df/d006eeeb/180",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Leonardo R. Moreira",
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "leochuckdk@gmail.com",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          SizedBox(
            height: 30,
          ),
          Material(
            elevation: 8,
            color: Color(0xFF008080),
            borderRadius: BorderRadius.circular(40),
            child: InkWell(
              borderRadius: BorderRadius.circular(40),
              onTap: () {
                print("Clicou!");
              },
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                child: Text("SAIR", style: TextStyle(color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
