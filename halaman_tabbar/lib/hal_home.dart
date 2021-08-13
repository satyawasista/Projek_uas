import 'package:flutter/material.dart';

class Halhome extends StatelessWidget {
  //const input({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("input data", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons. home, size: 90.0)
          ],
        ),
      ),
    );
  }
}

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Beranda"),
              backgroundColor: Colors.red[900],
            ),
            )
            );
  }
}

