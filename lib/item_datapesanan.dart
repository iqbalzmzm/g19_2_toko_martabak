import 'package:flutter/material.dart';
import 'package:g19_2_toko_martabak/counter_controller.dart';
import 'package:get/get.dart';

class Item_DataPesanan extends StatelessWidget {
  final String nama;
  final String alamat;
  final String pesanan;
  final String harga;
  final int total;
  final String status;
  final Function? onUpdate;
  final Function? onDelete;
  final CounterController myCounterController = Get.put(CounterController());

  Item_DataPesanan(
      this.nama, this.alamat, this.pesanan, this.harga, this.total, this.status,
      {this.onUpdate, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xfff78000))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  // width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama      : ' + nama,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Alamat    : ' + alamat,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Pesanan : \n   -' + pesanan,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Harga      : ' + harga,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Total        : $total',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Status     : ' + status,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Container(
              child: (status == 'Selesai')
                  ? Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7),
                        SizedBox(
                          height: 40,
                          width: 60,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.red[900],
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              )),
                              onPressed: () {
                                if (onDelete != null) onDelete!();
                              }),
                        )
                      ],
                    )
                  : Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 4.5),
                        SizedBox(
                          height: 40,
                          width: 120,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green[900],
                              ),
                              child: Text('Konfirmasi'),
                              onPressed: () {
                                if (onUpdate != null) onUpdate!();
                              }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 40,
                          width: 60,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red[900],
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              )),
                              onPressed: () {
                                if (onDelete != null) onDelete!();
                              }),
                        )
                      ],
                    )),
        ],
      ),
    );
  }
}
