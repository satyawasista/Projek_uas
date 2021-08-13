import 'package:flutter/material.dart';


class input extends StatelessWidget {
  //const input({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("input data", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons. add_box, size: 90.0)
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    home: new InputData(),
  ));
}

class InputData extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomeState createState() => new _HomeState();
}


class _HomeState extends State<InputData> {

  TextEditingController controllerNama= new TextEditingController();
  TextEditingController controllerEmail= new TextEditingController();
  TextEditingController controllerNomor= new TextEditingController();


  void kirimdata(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama Lengkap : ${controllerNama.text}"),
            new Text("Email Anda : ${controllerEmail.text}"),
            new Text("Nomor Telepon : ${controllerNomor.text}"),
            new RaisedButton(
              child: new Text("OK"),
              onPressed: ()=>Navigator.pop(context),
            )
          ]
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold( 
      appBar: new AppBar(
        title: new Text("Data Pribadi"),
        backgroundColor: Colors.red[900],
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerNama,
              decoration: new InputDecoration(
                hintText: "Nama Anda",
                labelText: "Nama Lengkap",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0)
                )
              ),
            ),
              new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                controller: controllerEmail,
              decoration: new InputDecoration(
                hintText: "Email Anda",
                labelText: "Masukkan Email",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0)
                )
              ),
            ),
             new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                controller: controllerNomor,
              decoration: new InputDecoration(
                hintText: "No. Telp",
                labelText: "No. Telepon",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0)
                )
              )
            ),
            new RaisedButton(
              child: new Text("Kirim"),
              color: Colors.red,
              onPressed: (){kirimdata();},
            )
          ]
        ) 
      )
    );
  }
}