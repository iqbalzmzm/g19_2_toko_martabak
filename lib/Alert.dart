import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:g19_2_toko_martabak/counter_controller.dart';
import 'package:g19_2_toko_martabak/mainpage.dart';

Future<dynamic> CostumAlert(BuildContext context, String pesan) {
  final CounterController myCounterController = Get.find();
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Color(0xFFE3F8FF),
        actions: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Selamat\n${myCounterController.nama}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF89593F),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                "assets/sukses.png",
                width: 100,
                height: 100,
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Get.to(() => Home());
                },
                child: Container(
                  width: 150,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFFA952),
                  ),
                  child: Text(
                    pesan,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      );
    },
  );
}
