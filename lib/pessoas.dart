import 'package:flutter/material.dart';

class Pessoas extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<Pessoas> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Center(
        child: new GestureDetector(

          child: new Stack(
            children: <Widget>[
              new Positioned.fill(            
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Container(
                      decoration: new BoxDecoration(
                        color: Colors.black38,
                        border: new Border(
                          top: new BorderSide(style: BorderStyle.solid, color: Colors.black12),
                          bottom: new BorderSide(style: BorderStyle.solid, color: Colors.black12),
                        ),
                      ),
                      child: new IconButton(                          
                        padding: new EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0, right: 24.0),
                        icon: new Icon(Icons.thumb_up),
                        color: new Color(0xFFFFFFFF),
                        onPressed: () {},
                      )
                    ),
                    new Container(
                      decoration: new BoxDecoration(
                        color: Colors.black54,
                        border: new Border(
                          top: new BorderSide(style: BorderStyle.solid, color: Colors.black12),
                          bottom: new BorderSide(style: BorderStyle.solid, color: Colors.black12),
                        ),
                      ),
                      child: new IconButton(                          
                        padding: new EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0, right: 24.0),
                        icon: new Icon(Icons.edit),
                        color: new Color(0xFFFFFFFF),
                        onPressed: () {},
                      )
                    ),
                    new Container(
                      decoration: new BoxDecoration(
                        color: new Color(0xFFE57373),
                        border: new Border(
                          top: new BorderSide(style: BorderStyle.solid, color: const Color(0xFFE57373)),
                          bottom: new BorderSide(style: BorderStyle.solid, color: const Color(0xFFE57373)),
                        ),
                      ),
                      child: new IconButton(                          
                        padding: new EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0, right: 24.0),
                        icon: new Icon(Icons.delete),
                        color: new Color(0xFFFFFFFF),
                        onPressed: () {},
                      )
                    ),
                  ],
                ),
              ),
              new SlideTransition(
                position: new Tween<Offset>(
                  begin:  Offset.zero,
                  end: const Offset(0.0, 0.0), //controls the opening of the slice
                ).animate(_animation),
                child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border(
                      top: new BorderSide(style: BorderStyle.solid, color: Colors.black26),
                      bottom: new BorderSide(style: BorderStyle.solid, color: Colors.black26),
                    ),
                    color: new Color(0xFFFFFFFF),
                  ),
                  padding: new EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text('LEONARDO RODRIGUES MOREIRA'),
                    ],
                  ),
                ),
              ),                           
            ],
          )
        )
      ),
    );
  }
}