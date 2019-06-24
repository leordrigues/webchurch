import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class Celula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Celulas";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(appBar: AppBar(
        title: Text(title),
        backgroundColor: Color(0xFF008080),
        ),
        body: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: List.generate(choices.length, (index) {
                return Center(
                  child: ChoiceCard(choice: choices[index], item: choices[index]),
                );
            }
          )
        )
      )
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Celula Carro.', icon: Icons.directions_car),
  const Choice(title: 'Celula Bicycle.', icon: Icons.directions_bike),
  const Choice(title: 'Celula Navio', icon: Icons.directions_boat),
  const Choice(title: 'Celula Onibus', icon: Icons.directions_bus),
  const Choice(title: 'Celula Trem', icon: Icons.directions_railway),
  const Choice(title: 'Celula Corrida', icon: Icons.directions_walk),
  const Choice(title: 'Celula Carro 2.', icon: Icons.directions_car),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
    ) : super(key: key);
 
  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
        return Card(
          color: Colors.white,
          child: Row(
              children: <Widget>[
                new Container( 
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.topLeft,
                  child: Icon(choice.icon, size:80.0, color: textStyle.color,)),
                new Expanded( 
                  child: new Container( 
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.topLeft,
                  child:                    
                    Text(choice.title, style: null, textAlign: TextAlign.left, maxLines: 5,),
                  )
                ),
            ],
           crossAxisAlignment: CrossAxisAlignment.start,
          )
    );
  }
}