import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:g19_2_toko_martabak/Alert.dart';
import 'package:g19_2_toko_martabak/counter_controller.dart';
import 'package:g19_2_toko_martabak/item_martabak.dart';

class DataPesananAsin extends StatefulWidget {
  const DataPesananAsin({Key? key}) : super(key: key);

  @override
  State<DataPesananAsin> createState() => _DataPesananState();
}

enum Gender { unknown, pria, wanita }

class _DataPesananState extends State<DataPesananAsin> {
  String Nama = '', Alamat = '', Pedas = '';
  String status = 'Sedang diproses';
  final CounterController myCounterController = Get.put(CounterController());
  final ctrlNama = TextEditingController();
  final ctrlAlamat = TextEditingController();
  final ctrljumlah = TextEditingController();

  bool isPedas = false;
  Gender gender = Gender.unknown;

  void dispose() {
    ctrlNama.dispose();
    ctrlAlamat.dispose();
    ctrljumlah.dispose();
    super.dispose();
  }

  String getGender(Gender value) {
    if (value == Gender.pria) {
      return "Laki - Laki";
    } else if (value == Gender.wanita) {
      return "Perempuan";
    } else if (value == Gender.unknown) {
      return "";
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference data = firestore.collection('DataPesanan');
    CollectionReference datamartabak = firestore.collection('Martabak');
    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      body: ListView(
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
              alignment: Alignment.centerLeft,
              splashRadius: 1,
              padding: EdgeInsets.only(left: 15, top: 20)),
          Container(
            alignment: Alignment.center,
            child: Container(
              width: 350,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Text(
                          "DATA \nPESANAN",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Icon(
                          Icons.wallet,
                          size: 100,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Nama   :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: 410,
                    child: TextField(
                      maxLength: 15,
                      controller: ctrlNama,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        )),
                        hintText: "Isi Nama Panggilan Anda",
                        prefixIcon:
                            Icon(Icons.account_circle, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Jenis Kelamin   :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    title: Text("Laki - Laki"),
                    leading: Radio(
                        groupValue: gender,
                        value: Gender.pria,
                        onChanged: (Gender? value) {
                          setState(() {
                            gender = value!;
                          });
                        }),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    title: Text("Perempuan"),
                    leading: Radio(
                        groupValue: gender,
                        value: Gender.wanita,
                        onChanged: (Gender? value) {
                          setState(() {
                            gender = value!;
                          });
                        }),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Alamat   :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: 410,
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      controller: ctrlAlamat,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )),
                          hintText: "Isi Alamat Anda",
                          prefixIcon: Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Jumlah   :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: 410,
                    child: TextFormField(
                      controller: ctrljumlah,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        )),
                        hintText: "Masukan Jumlah Pembelian",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Pilihan   :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    title: Text("Pedas"),
                    leading: Checkbox(
                        value: isPedas,
                        onChanged: (bool? value) {
                          setState(() {
                            isPedas = value!;
                          });
                        }),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Pesanan   : ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "    -" + '${myCounterController.jenisAsin}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Harga   : Rp." + '${myCounterController.hargajenisAsin}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (isPedas == true) {
                        Pedas = '(P)';
                      } else {
                        Pedas = "";
                      }
                      data.add({
                        'nama': ctrlNama.text,
                        'gender': getGender(gender),
                        'alamat': ctrlAlamat.text,
                        'no': "${myCounterController.nomor}",
                        'pesanan': "${myCounterController.jenisAsin}" + Pedas,
                        'harga': "${myCounterController.hargajenisAsin}",
                        'total': int.tryParse(ctrljumlah.text)! *
                            int.tryParse(
                                "${myCounterController.hargajenisAsin}")!,
                        'status': status,
                      });
                      myCounterController.nama.value = ctrlNama.text;
                      CostumAlert(context, "Pembelian Sukses");

                      ctrlNama.text = '';
                      ctrlAlamat.text = '';
                      ctrljumlah.text = '';
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black, minimumSize: Size(100, 50)),
                    child: Text("Pesan"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
