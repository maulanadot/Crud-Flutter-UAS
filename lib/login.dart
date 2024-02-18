import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/signup.dart';
import 'package:flutter_crud/homepage.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color.fromARGB(255, 238, 5, 126),
     body: Center(
       child: Column(
        
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Container(
             padding: EdgeInsets.all(10),
             width: 250,
             color: Colors.white,
             child: TextFormField(
               decoration: InputDecoration(
                   hintText: "Email",
                   border: InputBorder.none
               ),
             ),
           ),
           SizedBox(height: 10,),
           Container(
             padding: EdgeInsets.all(10),
             width: 250,
             color: Colors.white,
             child: TextFormField(
               decoration: InputDecoration(
                   hintText: "Password",
                   border: InputBorder.none
               ),
             ),
           ),
           SizedBox(height: 20,),
           MaterialButton(
             padding: EdgeInsets.all(20),
             minWidth: 250,
             color: Color.fromARGB(255, 241, 5, 198),
             child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
             onPressed: () {
              Navigator.push(
                   context, MaterialPageRoute(builder: (context) => HomePage()));
             },
           ),
           TextButton(
             child: Text("Belum Punya Akun ? Daftar Sekarang!",
               style: TextStyle(color: Colors.white),),
             onPressed: () {
               Navigator.push(
                   context, MaterialPageRoute(builder: (context) => SignUp()));
             },
           )
         ],
       ),
     ),
   );
 }
}