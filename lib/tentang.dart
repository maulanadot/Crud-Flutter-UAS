import 'package:flutter/material.dart';

void main() => runApp(MyTentang());

class MyTentang extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'tentang',
     theme: ThemeData(
       primarySwatch: Colors.pink,
     ),
     
     home: Tentang(),
   );
 }
}
class Tentang extends StatelessWidget {
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        title: Text("KAMPUS MERDEKA"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
          child: Text('Kampus Merdeka merupakan aplikasi Rancangan mahasiswa Teknik Informatika, guna memenuhi Tugas sebagai project UAS agar dapat mendapatkan nilai yang memuaskan.'),
        ),
  );
  
 }
}