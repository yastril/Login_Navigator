import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KategoriMenu(),
    );
  }
}

//Membuat Widget Row
class PageRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text('ICON ROW 1'),
            color: Colors.limeAccent,
            padding: EdgeInsets.all(16.0),
          ),
          //Row kedua
          Container(
            child: Text('ICON ROW 2'),
            color: Colors.orange,
            padding: EdgeInsets.all(16.0),
          ),
          //Row ketiga
          Container(
            child: Text('ICON ROW 3'),
            color: Colors.pinkAccent,
            padding: EdgeInsets.all(16.0),
          ),
        ], 
      )
    ) ;
  }
}

//Membuat Widget Kolom
class PageColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Column 1'),
            color: Colors.tealAccent,
            padding: EdgeInsets.all(16.0),
          ),
          //Kolom ke dua
          Container(
            child: Text('Column 2'),
            color: Colors.purpleAccent,
            padding: EdgeInsets.all(16.0),
          ),

          //Column ke tiga
          Container(
            child:Text('Column 3'),
            color: Colors.pinkAccent,
            padding: EdgeInsets.all(16.0),
          ),
        ],
      ),

    );
  }
}

//Membuat Text Di Tengah
class PageText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Tengah'),
      ),
      body: Center(
        child: Text('Text Tengah',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w800,
              backgroundColor: Colors.pinkAccent,
            ),
        ),

      ),
    );
  }
}

//Membuat ICON
class PageIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ICON'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.payment),
                Text('Tagihan'),
              ],
            ),

            Column(
              children: <Widget>[
                Icon(Icons.phone_android),
                Text('Pulsa'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.monetization_on),
                Text('Uang'),
              ],
            ),
             Column(
              children: <Widget>[
                Icon(Icons.live_tv),
                Text('Cinema'),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

//ICON 2 Baris
class KategoriMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategory Menu'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.payment,color: Colors.red), Text('Tagihan')],
                ),
                Column(
                  children: [Icon(Icons.phone_android), Text('Pulsa')],
                ),
                Column(
                  children: [Icon(Icons.monetization_on), Text('Uang')],
                ),
                Column(
                  children: [Icon(Icons.home), Text('HOME')],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Column(
                  children: [Icon(Icons.credit_card, color: Colors.orange), Text('kartu')],
                ),
                Column(
                  children: [Icon(Icons.power, color: Colors.orange), Text('Listrik')],
                ),
                Column(
                  children: [Icon(Icons.gamepad, color: Colors.orange), Text('Game')],
                ),
                Column(
                  children: [Icon(Icons.phone_in_talk, color: Colors.orange), Text('Data')],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Column(
                  children: [Icon(Icons.credit_card, color: Colors.orange), Text('kartu')],
                ),
                Column(
                  children: [Icon(Icons.power, color: Colors.orange), Text('Listrik')],
                ),
                Column(
                  children: [Icon(Icons.gamepad, color: Colors.orange), Text('Game')],
                ),
                Column(
                  children: [Icon(Icons.phone_in_talk, color: Colors.orange), Text('Data')],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



//Membuat Container
//Kontainer berfungsi untuk membungkus widget sehingga memiliki nilai
//atau property seperti warna background, style dll

class PageContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.purpleAccent,
        ),
        child: Text('Container',
          style: TextStyle(color:Colors.white,fontSize: 20.0),
        ),
      ),
    );
  }
}

//SizeBox, Memberikan Jarak
class PageSizeBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Box'),
        backgroundColor: Colors.teal,
      ),
    body: Column(
      children: <Widget>[
        Text('A', style: TextStyle(fontSize: 30.0),),
        SizedBox(height: 30.0,),
        Text('B',style: TextStyle(fontSize: 30.0),)
      ],
    ),

    );
  }
}


//Membuat Button
class PageButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        backgroundColor: Colors.red,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            color: Colors.pinkAccent,
            child: Text('Button Raised',style: TextStyle(color: Colors.white),),
            
            onPressed: (){},
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
            child: Text('Flat Button',style: TextStyle(color: Colors.white),),
            onPressed: (){},
          ),

          MaterialButton(
            color: Colors.lightBlueAccent,
            child: Text('Mateial Button',style: TextStyle(color: Colors.white),),
            onPressed: (){},
          ),
        ],
      ),
      

    );
  }
}