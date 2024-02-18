import 'package:flutter/material.dart';
import 'package:flutter_crud/splashscreen.dart';
import 'package:flutter_crud/login.dart';
import 'package:flutter_crud/signup.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'SELAMAT DATANG DI APLIKASI UNCLE MUTHU',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: SplashScreen(),
     

     
   );
 }
}
class HomePage extends StatelessWidget {
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color.fromARGB(255, 232, 7, 168),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Icon(Icons.school_rounded, color: Colors.white, size: 45,),
           Text("UNCLE MUTHU",
               style: TextStyle(color: Colors.white, fontSize: 22)),
             
           SizedBox(height: 200,),
           Text("Selamat Datang Di UNCLE MUTHU",
               style: TextStyle(color: Colors.white, fontSize: 22)),
           SizedBox(height: 6,),
           Text("Silahkan Login terlebih dahulu !",
             style: TextStyle(color: Colors.white, fontSize: 10),),
           SizedBox(height: 6,),
           MaterialButton(
             minWidth: 210,
             color: Color.fromARGB(255, 221, 2, 115),
             textColor: Colors.white,
             child: Text("Sign Up",
               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
             },
           ),
           TextButton(
             child: Text("Log In", style: TextStyle(color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 18),),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
             },
           )
         ],
       ),
     ),
   );
 }
}