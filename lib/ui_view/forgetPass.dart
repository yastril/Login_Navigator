import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forget Password',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ForgetPassword(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class ForgetPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          
            Text  ("LUPA PASSWORD",
            style: TextStyle(
              fontWeight:FontWeight.bold,
              color: Colors.grey,
              ),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(5),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(5),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              padding: EdgeInsets.all(20),
              minWidth: 250,
              color: Colors.purple,
              child: Text( "Permintaan Password" , style: TextStyle(color:
              Colors.white,fontSize: 14,),),
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}