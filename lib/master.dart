import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageColumn(),
    );
  }
}

class PageRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("row"),
      ),
    body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Text("Hallo 1"),
          color: Colors.lime,
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          child: Text("Hallo 2"),
          color: Colors.purple,
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          child: Text("Hallo 3"),
          color: Colors.redAccent,
          padding: EdgeInsets.all(16.0),
        ),
        
      ],

      
    ),
    
    );
  }
}

//Membuat Page Column
class PageColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Widget Column'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Text('ICON 1'),
            color: Colors.teal,
            padding: EdgeInsets.all(16.0),
          ),
          Container(
            child: Text('ICON 2'),
            color: Colors.red,
            padding: EdgeInsets.all(16.0),
          ),
          Container(
            child: Text('ICON 3'),
            color:Colors.purple,
            padding: EdgeInsets.all(16.0),
          ),

        ],
      ),
    );
  }
}
