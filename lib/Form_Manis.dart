import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:g19_2_toko_martabak/Alert.dart';
import 'package:g19_2_toko_martabak/counter_controller.dart';

class DataPesananManis extends StatefulWidget {
  const DataPesananManis({Key? key}) : super(key: key);

  @override
  State<DataPesananManis> createState() => _DataPesananState();
}

enum Gender { unknown, pria, wanita }

class _DataPesananState extends State<DataPesananManis> {
  String Nama = '', Alamat = '';
  String status = 'Sedang diproses';
  final CounterController myCounterController = Get.put(CounterController());
  final ctrlNama = TextEditingController();
  final ctrlAlamat = TextEditingController();
  final ctrljumlah = TextEditingController();
  Gender gender = Gender.unknown;

  void dispose() {
    ctrlNama.dispose();
    ctrlAlamat.dispose();
    super.dispose();
  }

  String getGender(Gender value) {
    if (value == Gender.pria) {
      return "Tn.";
    } else if (value == Gender.wanita) {
      return "Ny.";
    } else if (value == Gender.unknown) {
      return "";
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference data = firestore.collection("DataPesanan");
    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      body: ListView(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
            color: Color(0xFFFFA952),
            alignment: Alignment.centerLeft,
            splashRadius: 1,
            padding: EdgeInsets.only(left: 15, top: 20),
          ),
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
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Color(0xFF89593F),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Icon(
                          Icons.wallet,
                          color: Color(0xFF89593F),
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
                      "Nama",
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
                            color: Color(0xFF89593F),
                            width: 2,
                          ),
                        ),
                        hintText: "isi nama anda",
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Color(0xFF89593F),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Jenis Kelamin",
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
                      fillColor: MaterialStateColor.resolveWith(
                        (states) => Color(0xFF89593F),
                      ),
                      onChanged: (Gender? value) {
                        setState(
                          () {
                            gender = value!;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    title: Text("Perempuan"),
                    leading: Radio(
                      groupValue: gender,
                      value: Gender.wanita,
                      fillColor: MaterialStateColor.resolveWith(
                        (states) => Color(0xFF89593F),
                      ),
                      onChanged: (Gender? value) {
                        setState(
                          () {
                            gender = value!;
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Alamat",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: 410,
                    child: TextFormField(
                      controller: ctrlAlamat,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF89593F),
                            width: 2,
                          ),
                        ),
                        hintText: "isi alamat anda",
                        prefixIcon: Icon(
                          Icons.location_on_outlined,
                          color: Color(0xFF89593F),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
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
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
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
                      "    -" + '${myCounterController.jenisManis}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Harga   : Rp." +
                          '${myCounterController.hargajenisManis}',
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
                      data.add({
                        'nama': ctrlNama.text,
                        'gender': getGender(gender),
                        'alamat': ctrlAlamat.text,
                        'no': "${myCounterController.nomor}",
                        'pesanan': "${myCounterController.jenisManis}",
                        'harga': "${myCounterController.hargajenisManis}",
                        'total': int.tryParse(ctrljumlah.text)! *
                            int.tryParse(
                                "${myCounterController.hargajenisManis}")!,
                        'status': status,
                      });
                      myCounterController.nama.value = ctrlNama.text;
                      CostumAlert(context, "Pembelian Sukses");

                      ctrlNama.text = '';
                      ctrlAlamat.text = '';
                      ctrljumlah.text = '';

                      myCounterController.idjenisManis.value = "";
                      myCounterController.jenisManis.value = "";
                      myCounterController.hargajenisManis.value = "";
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
