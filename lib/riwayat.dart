import 'package:g19_2_toko_martabak/counter_controller.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:g19_2_toko_martabak/item_datapesanan.dart';

class Riwayat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesanan = firestore.collection("DataPesanan");
    final CounterController myCounterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Martabak Ajib \nHaji Sendi",
          textAlign: TextAlign.center,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              StreamBuilder<QuerySnapshot>(
                stream: pesanan
                    .where('no', isEqualTo: '${myCounterController.nomor}')
                    .snapshots(),
                builder: (_, snapshot) {
                  return (snapshot.hasData)
                      ? Column(
                          children: snapshot.data!.docs
                              .map(
                                (e) => Item_DataPesanan(
                                  e.get('nama'),
                                  e.get('alamat'),
                                  e.get('pesanan'),
                                  e.get('harga'),
                                  e.get('total'),
                                  e.get('status'),
                                  onDelete: () {
                                    pesanan.doc(e.id).delete();
                                  },
                                  onUpdate: () {
                                    pesanan.doc(e.id).update({
                                      'status': "${myCounterController.confirm}"
                                    });
                                  },
                                ),
                              )
                              .toList(),
                        )
                      : Text('Loading...');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
