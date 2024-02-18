import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_crud/main.dart';

class SplashScreen extends StatefulWidget{

  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen>{

void initState(){
  super.initState();
  splashscreenStart();
}
splashscreenStart() async{
  var duration = const Duration(seconds: 3);
  return Timer(duration, () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
   });
}

@override
Widget build(BuildContext context){

return Scaffold(
  backgroundColor: Color.fromARGB(255, 210, 6, 153),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.cookie,
          size: 100.0,
          color: Colors.white,
        ),
        SizedBox(height: 24.0,),
        Text("KAMPUS MERDEKA",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ))
      ],
    ),
  ),
);

}


}