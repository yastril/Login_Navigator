import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Register',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image.asset(
            //   "assets/images/background_flash.jpeg",
            //   width: 380.0,
            //   height: 160.0,
            //   fit: BoxFit.cover,
            // ),
           Icon(Icons.settings_input_antenna,color: Colors.white,size:60 ,),
            //SizedBox(height: 200,),
            Text("INDONESIA", style: TextStyle(color: Colors.white,fontSize: 30,)),
            SizedBox(height: 10),
            Text("Tekaje Cyber Expert Community",style: TextStyle(color:Colors.white, fontSize: 18)),
            SizedBox(height:200,),
            MaterialButton(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.purple)),
              minWidth: 210,
              color: Colors.purple,
              textColor: Colors.white,
              child: Text("Join Community", style:TextStyle(color: Colors.white,fontSize: 18),),
              onPressed: (){
                //Navigaor push, berpindah ke ahalaman Login
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
            ),
           
            FlatButton(
              child: Text( "Sign In disini" , style: TextStyle(color: Colors.white),),
              onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
            ),            
          ],
        ),
      ),
    );
  }
}


//Testimng Login
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
               Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
              },
            ),
             FlatButton(
              child: Text( "Forget password, click here" , style: TextStyle(color: Colors.white),),
              onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
              },
            ),
          ],
        ),
      ),
    );
  }
}


//Test Sigup
class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.account_circle,color: Colors.white,size:60 ,),
            Text  ("SIGN UP",
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
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(5),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
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
                  hintText: "Asal Sekolah",
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
              child: Text( "Sign Up" , style: TextStyle(color:
              Colors.white,fontSize: 14,),),
              onPressed: (){},
            ),
            FlatButton(
              child: Text( "Have a account? Login here" , style: TextStyle(color: Colors.white),),
              onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

//LUPA Password
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