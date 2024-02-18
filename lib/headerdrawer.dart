import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({super.key});

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: double.infinity,
      height: 200,
      padding:const EdgeInsets.only(top:20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Container(
            
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 70.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(image: NetworkImage("https://missionfinancialservices.net/wp-content/uploads/2019/04/aprilblog2.jpg")),
            

            ),
            ),
            const Text("Selamat Datang !!", style: TextStyle(color: Colors.white, fontSize: 20),),
            const Text("Teknik_Informatika", style: TextStyle(color: Colors.white, fontSize: 14),),


        ],
      ),

    );
  }
}