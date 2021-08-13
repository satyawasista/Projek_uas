import 'package:flutter/material.dart';

class About extends StatelessWidget {
  //const input({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("about aplikasi", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons. assignment_late, size: 90.0)
          ],
        ),
      ),
      
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("About"),
              backgroundColor: Colors.red[900],
            ),
            body: SingleChildScrollView(
              child: Container(
                  child: Column(children: <Widget>[
                Container(
                  height: 140,
                  child: Image(image: AssetImage("assets/gambar/mobiled.png")),
                ),
                Container(
                  height: 200,
                  child: Image(image: AssetImage("assets/gambar/car 2.png")),
                ),
                Container(
                  height: 40,
                  color: Colors.white,
                ),
                Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Text(
                      "Kendaraan kita menjadi media promosi produk atau jasa sebuah perusahaan. Konsepnya adalah merekrut para pengemudi mobil dan motor untuk kemudian memasang iklan di kendaraan masing-masing. Para pemilik kendaraan akan mendapat penghasilan sesuai jarak yang mereka tempuh dengan kendaraan masing-masing.",
                      textAlign: TextAlign.center,
                    )),
                Container(
                  height: 40,
                  color: Colors.white,
                ),
                Container(
                  height: 1,
                  color: Colors.black,
                ),
                Container(
                  height: 40,
                  color: Colors.white,
                ),
                Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Text(
                      "Copyrights by:",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.lightBlue[300]),
                      textAlign: TextAlign.center,
                    )),
                Container(
                  height: 40,
                  color: Colors.white,
                ),
                Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Text(
                      "I Putu Bayu Wiratiku_190030242",
                      textAlign: TextAlign.center,
                    )),
                Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Text(
                      "I Gusti Putu Adriyan Widiartha_190030258",
                      textAlign: TextAlign.center,
                    )),
                Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Text(
                      "I Dewa Made Satya Guna Dharma_190030388",
                      textAlign: TextAlign.center,
                    )),
                Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Text(
                      "I Nyoman Satya Prema Wasista_190030480",
                      textAlign: TextAlign.center,
                    )),
                Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Text(
                      "Afiq Andico Pangimpian_190030591",
                      textAlign: TextAlign.center,
                    )),
                Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Text(
                      "Komang Aditya Wardana_190030631",
                      textAlign: TextAlign.center,
                    )),
                Container(
                  height: 40,
                  color: Colors.white,
                ),
              ])),
            )));
  }
}
