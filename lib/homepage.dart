import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_crud/login.dart';
import 'package:flutter_crud/profile.dart';
import 'package:flutter_crud/tambahdata.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_crud/headerdrawer.dart';
import 'package:flutter_crud/tentang.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _listdata = [];
  bool _isloading = true;

  Future _getdata() async {
    try {
      final respone = await http
          .get(Uri.parse('http://192.168.1.2/flutterapi/crudflutter/read.php'));
      if (respone.statusCode == 200) {
        print(respone.body);
        //print(respone.body);
        final data = jsonDecode(respone.body);
        setState(() {
          _listdata = data;
          _isloading = false;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    _getdata();
    //print(_listdata);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KAMPUS MERDEKA"),
        backgroundColor: Color.fromARGB(255, 209, 11, 212),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(children: [
            HeaderDrawer(),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Beranda"),
              onTap:() {Navigator.pop(context);
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Pengaturan"),
              onTap:() {
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Profile"),
              onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));

              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Keluar"),
              onTap:() { Navigator.push(context,MaterialPageRoute(builder: (context) =>Login()));
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("Tentang"),
              onTap:() { Navigator.push(context,MaterialPageRoute(builder: (context) =>MyTentang()));
                
                
              },
            ),

          ],
          ),
        ),
      ),

      body: 
      ListView.builder(
              itemCount: _listdata.length,
              itemBuilder: ((context, index) {
                return Card(
                  child: ListTile(
                    title: Text(_listdata[index]['nama']),
                    subtitle: Text(_listdata[index]['alamat']),
                  ),
                );
              }),
            ),
      
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one_outlined),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => TambahDataPage())));
          }),
    );
  }
}
