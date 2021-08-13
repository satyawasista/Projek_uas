import 'package:flutter/material.dart';

class list  extends StatelessWidget {
  //const input({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("list informasi", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons. all_inbox, size: 90.0)
          ],
        ),
      ),
    );
  }
}

class Listinformasi extends StatefulWidget {
  //const Listinformasi({ Key? key }) : super(key: key);

  @override
  _ListinformasiState createState() => _ListinformasiState();
}

class _ListinformasiState extends State<Listinformasi> {
  final List <String>listof= ["Mobiled Exclusive", "Mobiled Sharing","Mobile Convoy"];
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text("Informasi Produk",
        style: new TextStyle(fontSize: 19.0),
        ),
        backgroundColor: Colors.red[900],
      ),

      body: new Container(
        child: ListView.builder(
          itemBuilder: (_, int index)=>listDataItem(this.listof [index]),
          itemCount: this.listof.length,
        ),
      ),
    );
  }
}

class listDataItem extends StatelessWidget{

  String itemName;
  listDataItem (this.itemName);


  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 7.0,
      child: new Container(
        margin: EdgeInsets.all(6.0),
        padding: EdgeInsets.all(6.0),
        child: new Row(
          children: <Widget>[
            new CircleAvatar(
              child: new Text(itemName[0]),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),

            new Padding(padding: EdgeInsets.all(8.0)),
            new Text(itemName,style:TextStyle (fontSize: 20.0),)


          ],
        ),
      ),
    );
  }
  
}