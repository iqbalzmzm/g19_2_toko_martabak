import 'package:flutter/material.dart';
import 'package:g19_2_toko_martabak/counter_controller.dart';
import 'package:get/get.dart';

class Item_Martabak extends StatelessWidget {
  final String jenis;
  final String harga;
  final String id;
  final CounterController myCounterController = Get.put(CounterController());

  Item_Martabak(this.harga, this.jenis, this.id);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(""),
    );
  }
}
