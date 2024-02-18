import 'package:flutter/material.dart';

void main() => runApp(MyProfil());

class MyProfil extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'profile',
     theme: ThemeData(
       primarySwatch: Colors.pink,
     ),
     
     home: Profile(),
   );
 }
}
class Profile extends StatelessWidget {
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        title: Text("KAMPUS MERDEKA"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
          child: Text('Copyright By Aldy Setyo Wibowo | Firman Maulana'),
        ),
  );
  
 }
}