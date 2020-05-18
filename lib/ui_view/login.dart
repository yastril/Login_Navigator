import 'package:flutter/material.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login Register',
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//       ),
//       home: Login(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.account_circle,color: Colors.white,size:60 ,),
            Text  ("LOGIN",
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
                  hintText: "Password",
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
              child: Text( "Login" , style: TextStyle(color:
              Colors.white,fontSize: 14,),),
              onPressed: (){},
            ),
            FlatButton(
              child: Text( "Not a account? signup now" , style: TextStyle(color: Colors.white),),
              onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder:
                //(context) => SignUp()));
              },
            ),
              Text("Forget password, click here", style: TextStyle(color: Colors.white,fontSize: 12)),
          ],
        ),
      ),
    );
  }
}