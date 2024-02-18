import 'package:flutter/material.dart';
import 'package:flutter_crud/login.dart';
void main() => runApp(SignUp());


class SignUp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.deepPurple,

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
                   hintText: "Nama Lengkap",
                   hintStyle: TextStyle(color: Colors.black),
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
                   hintText: "Email",
                   hintStyle: TextStyle(color: Colors.black),
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
                   hintStyle: TextStyle(color: Colors.black),
                   border: InputBorder.none

               ),
             ),
           ),
           SizedBox(height: 20,),
           MaterialButton(
             padding: EdgeInsets.all(20),
             minWidth: 250,
             child: Text("REGISTER", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
             color: Colors.green,
             onPressed: (){
              Navigator.push(
                   context, MaterialPageRoute(builder: (context) => Login()));
             },
           ),
           TextButton(
             child: Text("Sudah Daftar? Login Sekarang !", style: TextStyle(color: Colors.white)),
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
             },
           )
         ],
       ),
     ),
   );
 }
}