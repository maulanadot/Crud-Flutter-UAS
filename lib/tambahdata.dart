import 'package:flutter/material.dart';
import 'package:flutter_crud/homepage.dart';
import 'package:http/http.dart' as http;

class TambahDataPage extends StatefulWidget {
  const TambahDataPage({super.key});

  @override
  State<TambahDataPage> createState() => _TambahDataPageState();
}

class _TambahDataPageState extends State<TambahDataPage> {
  // ignore: non_constant_identifier_names
  final FormKey = GlobalKey<FormState>();
  TextEditingController nisn = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController alamat = TextEditingController();
  Future _simpan() async {
    final respone= await http.post(
        Uri.parse('http://192.168.1.2/flutterapi/crudflutter/create.php'),
        body: {
          "nisn": nisn.text,
          "nama": nama.text,
          "alamat": alamat.text,
        });
    if (respone.statusCode ==200) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tambah Data"),
        ),
        body: Form(
          key: FormKey,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: nisn,
                  decoration: InputDecoration(
                    hintText: "nisn",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "nisn Tidak Boleh Kosong";
                    }
              
                  }
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: nama,
                  decoration: InputDecoration(
                    hintText: "nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nama Tidak Boleh Kosong";
                    }
                  
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    controller: alamat,
                    decoration: InputDecoration(
                      hintText: "Alamat",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Alamat Tidak Boleh Kosong";
                      }
                      
                    }),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      if (FormKey.currentState!.validate()) {
                        _simpan().then((value) {
                          if (value) {
                            const snackBar = SnackBar(
                              content: Text('Data Berhasil Di Simpan!'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                              
                          } else {
                            final snackBar = SnackBar(
                              content: const Text('Data Gagal Di Simpan!'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        });
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => HomePage())),
                            (route) => false);
                      }
                    },
                    child: Text("Simpan"))
              ],
            ),
          ),
        ));
  }
}
