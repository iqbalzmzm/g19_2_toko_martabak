import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:g19_2_toko_martabak/counter_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:g19_2_toko_martabak/Form_Asin.dart';
import 'package:g19_2_toko_martabak/martabaktelor/thememartabak.dart';
import 'package:g19_2_toko_martabak/martabaktelor/martabaktelor.dart';
import 'package:g19_2_toko_martabak/item_martabak.dart';

class DetailScreen1 extends StatelessWidget {
  String id1 = "1";
  @override
  Widget build(BuildContext context) {
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('Martabak');
    myCounterController.idjenisAsin.value = id1;
    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Martabak Ajib \nHaji Sendi",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/martabakdagingsapi.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 244,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xFFE3F8FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Martabak Telur Isi Daging Sapi',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: blackcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp30.000',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: yellowcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Detail Produk',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackcolor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Martabak telur dengan varian isi daging sapi dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greycolor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            StreamBuilder<QuerySnapshot>(
                              stream: datamartabak
                                  .where('id',
                                      isEqualTo:
                                          "${myCounterController.idjenisAsin}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_Martabak(
                                                myCounterController
                                                    .hargajenisAsin
                                                    .value = e.get('harga'),
                                                myCounterController.jenisAsin
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisAsin
                                                    .value = e.get('id'),
                                              ),
                                            )
                                            .toList(),
                                      )
                                    : Text('Loading...');
                              },
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                padding: EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                highlightElevation: 0,
                                disabledElevation: 0,
                                onPressed: () {
                                  print(myCounterController.jenisAsin);
                                  print(myCounterController.hargajenisAsin);
                                  print(id1);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananAsin();
                                      },
                                    ),
                                  );
                                },
                                color: yellowcolor,
                                child: Text(
                                  'Pesan',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen2 extends StatelessWidget {
  String id2 = "2";
  @override
  Widget build(BuildContext context) {
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('Martabak');
    myCounterController.idjenisAsin.value = id2;
    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Martabak Ajib \nHaji Sendi",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/martabakdagingayam.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 244,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xFFE3F8FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Martabak Telur Isi Daging Ayam',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: blackcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp20.000',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: yellowcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Detail Produk',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackcolor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Martabak telur dengan varian isi daging ayam dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greycolor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            StreamBuilder<QuerySnapshot>(
                              stream: datamartabak
                                  .where('id',
                                      isEqualTo:
                                          "${myCounterController.idjenisAsin}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_Martabak(
                                                myCounterController
                                                    .hargajenisAsin
                                                    .value = e.get('harga'),
                                                myCounterController.jenisAsin
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisAsin
                                                    .value = e.get('id'),
                                              ),
                                            )
                                            .toList(),
                                      )
                                    : Text('Loading...');
                              },
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                padding: EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                highlightElevation: 0,
                                disabledElevation: 0,
                                onPressed: () {
                                  print(myCounterController.jenisAsin);
                                  print(myCounterController.hargajenisAsin);
                                  print(id2);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananAsin();
                                      },
                                    ),
                                  );
                                },
                                color: yellowcolor,
                                child: Text(
                                  'Pesan',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen3 extends StatelessWidget {
  String id3 = "3";
  @override
  Widget build(BuildContext context) {
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('Martabak');
    myCounterController.idjenisAsin.value = id3;
    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Martabak Ajib \nHaji Sendi",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/martabaksayur.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 244,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xFFE3F8FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Martabak Telur Isi Sayuran',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: blackcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp15.000',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: yellowcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Detail Produk',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackcolor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Martabak telur dengan varian isi sayuran dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greycolor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            StreamBuilder<QuerySnapshot>(
                              stream: datamartabak
                                  .where('id',
                                      isEqualTo:
                                          "${myCounterController.idjenisAsin}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_Martabak(
                                                myCounterController
                                                    .hargajenisAsin
                                                    .value = e.get('harga'),
                                                myCounterController.jenisAsin
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisAsin
                                                    .value = e.get('id'),
                                              ),
                                            )
                                            .toList(),
                                      )
                                    : Text('Loading...');
                              },
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                padding: EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                highlightElevation: 0,
                                disabledElevation: 0,
                                onPressed: () {
                                  print(myCounterController.jenisAsin);
                                  print(myCounterController.hargajenisAsin);
                                  print(id3);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananAsin();
                                      },
                                    ),
                                  );
                                },
                                color: yellowcolor,
                                child: Text(
                                  'Pesan',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen4 extends StatelessWidget {
  String id4 = "4";
  @override
  Widget build(BuildContext context) {
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('Martabak');
    myCounterController.idjenisAsin.value = id4;
    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Martabak Ajib \nHaji Sendi",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/martabakjamur.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 244,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xFFE3F8FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Martabak Telur Isi Jamur',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: blackcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp18.000',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: yellowcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Detail Produk',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackcolor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Martabak telur dengan varian isi jamur dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greycolor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            StreamBuilder<QuerySnapshot>(
                              stream: datamartabak
                                  .where('id',
                                      isEqualTo:
                                          "${myCounterController.idjenisAsin}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_Martabak(
                                                myCounterController
                                                    .hargajenisAsin
                                                    .value = e.get('harga'),
                                                myCounterController.jenisAsin
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisAsin
                                                    .value = e.get('id'),
                                              ),
                                            )
                                            .toList(),
                                      )
                                    : Text('Loading...');
                              },
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                padding: EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                highlightElevation: 0,
                                disabledElevation: 0,
                                onPressed: () {
                                  print(myCounterController.jenisAsin);
                                  print(myCounterController.hargajenisAsin);
                                  print(id4);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananAsin();
                                      },
                                    ),
                                  );
                                },
                                color: yellowcolor,
                                child: Text(
                                  'Pesan',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen5 extends StatelessWidget {
  String id5 = "5";
  @override
  Widget build(BuildContext context) {
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('Martabak');
    myCounterController.idjenisAsin.value = id5;
    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Martabak Ajib \nHaji Sendi",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/martabakbaksosapi.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 244,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xFFE3F8FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Martabak Telur Isi Bakso Sapi',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: blackcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp25.000',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: yellowcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Detail Produk',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackcolor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Martabak telur dengan varian isi Bakso Sapi dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greycolor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            StreamBuilder<QuerySnapshot>(
                              stream: datamartabak
                                  .where('id',
                                      isEqualTo:
                                          "${myCounterController.idjenisAsin}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_Martabak(
                                                myCounterController
                                                    .hargajenisAsin
                                                    .value = e.get('harga'),
                                                myCounterController.jenisAsin
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisAsin
                                                    .value = e.get('id'),
                                              ),
                                            )
                                            .toList(),
                                      )
                                    : Text('Loading...');
                              },
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                padding: EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                highlightElevation: 0,
                                disabledElevation: 0,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananAsin();
                                      },
                                    ),
                                  );
                                },
                                color: yellowcolor,
                                child: Text(
                                  'Pesan',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen6 extends StatelessWidget {
  String id6 = "6";
  @override
  Widget build(BuildContext context) {
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('Martabak');
    myCounterController.idjenisAsin.value = id6;

    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Martabak Ajib \nHaji Sendi",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/martabakkornet.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 244,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xFFE3F8FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Martabak Telur Isi Kornet',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: blackcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp25.000',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: yellowcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Detail Produk',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackcolor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Martabak telur dengan varian isi kornet dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greycolor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            StreamBuilder<QuerySnapshot>(
                              stream: datamartabak
                                  .where('id',
                                      isEqualTo:
                                          "${myCounterController.idjenisAsin}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_Martabak(
                                                myCounterController
                                                    .hargajenisAsin
                                                    .value = e.get('harga'),
                                                myCounterController.jenisAsin
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisAsin
                                                    .value = e.get('id'),
                                              ),
                                            )
                                            .toList(),
                                      )
                                    : Text('Loading...');
                              },
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                padding: EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                highlightElevation: 0,
                                disabledElevation: 0,
                                onPressed: () {
                                  print(myCounterController.jenisAsin);
                                  print(myCounterController.hargajenisAsin);
                                  print(id6);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananAsin();
                                      },
                                    ),
                                  );
                                },
                                color: yellowcolor,
                                child: Text(
                                  'Pesan',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen7 extends StatelessWidget {
  String id7 = "7";
  @override
  Widget build(BuildContext context) {
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('Martabak');
    myCounterController.idjenisAsin.value = id7;

    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Martabak Ajib \nHaji Sendi",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/martabakjagung.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 244,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xFFE3F8FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Martabak Telur Isi Jagung',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: blackcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp15.000',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: yellowcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Detail Produk',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackcolor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Martabak telur dengan varian isi jagung dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greycolor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            StreamBuilder<QuerySnapshot>(
                              stream: datamartabak
                                  .where('id',
                                      isEqualTo:
                                          "${myCounterController.idjenisAsin}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_Martabak(
                                                myCounterController
                                                    .hargajenisAsin
                                                    .value = e.get('harga'),
                                                myCounterController.jenisAsin
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisAsin
                                                    .value = e.get('id'),
                                              ),
                                            )
                                            .toList(),
                                      )
                                    : Text('Loading...');
                              },
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                padding: EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                highlightElevation: 0,
                                disabledElevation: 0,
                                onPressed: () {
                                  print(myCounterController.jenisAsin);
                                  print(myCounterController.hargajenisAsin);
                                  print(id7);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananAsin();
                                      },
                                    ),
                                  );
                                },
                                color: yellowcolor,
                                child: Text(
                                  'Pesan',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen8 extends StatelessWidget {
  String id8 = "8";
  @override
  Widget build(BuildContext context) {
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('Martabak');
    myCounterController.idjenisAsin.value = id8;

    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Martabak Ajib \nHaji Sendi",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/martabaksosis.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 244,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xFFE3F8FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Martabak Telur Isi Sosis',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: blackcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp20.000',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: yellowcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Detail Produk',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackcolor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Martabak telur dengan varian isi sosis dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greycolor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            StreamBuilder<QuerySnapshot>(
                              stream: datamartabak
                                  .where('id',
                                      isEqualTo:
                                          "${myCounterController.idjenisAsin}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_Martabak(
                                                myCounterController
                                                    .hargajenisAsin
                                                    .value = e.get('harga'),
                                                myCounterController.jenisAsin
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisAsin
                                                    .value = e.get('id'),
                                              ),
                                            )
                                            .toList(),
                                      )
                                    : Text('Loading...');
                              },
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                padding: EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                highlightElevation: 0,
                                disabledElevation: 0,
                                onPressed: () {
                                  print(myCounterController.jenisAsin);
                                  print(myCounterController.hargajenisAsin);
                                  print(id8);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananAsin();
                                      },
                                    ),
                                  );
                                },
                                color: yellowcolor,
                                child: Text(
                                  'Pesan',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen9 extends StatelessWidget {
  String id = "9";
  @override
  Widget build(BuildContext context) {
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('Martabak');
    myCounterController.idjenisAsin.value = id;

    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Martabak Ajib \nHaji Sendi",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/martabaktuna.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 244,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xFFE3F8FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Martabak Telur Isi Tuna',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: blackcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp40.000',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: yellowcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Detail Produk',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackcolor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Martabak telur dengan varian isi daging tuna dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greycolor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            StreamBuilder<QuerySnapshot>(
                              stream: datamartabak
                                  .where('id',
                                      isEqualTo:
                                          "${myCounterController.idjenisAsin}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_Martabak(
                                                myCounterController
                                                    .hargajenisAsin
                                                    .value = e.get('harga'),
                                                myCounterController.jenisAsin
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisAsin
                                                    .value = e.get('id'),
                                              ),
                                            )
                                            .toList(),
                                      )
                                    : Text('Loading...');
                              },
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                padding: EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                highlightElevation: 0,
                                disabledElevation: 0,
                                onPressed: () {
                                  print(myCounterController.jenisAsin);
                                  print(myCounterController.hargajenisAsin);
                                  print(id);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananAsin();
                                      },
                                    ),
                                  );
                                },
                                color: yellowcolor,
                                child: Text(
                                  'Pesan',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen10 extends StatelessWidget {
  String id = "10";
  @override
  Widget build(BuildContext context) {
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('Martabak');
    myCounterController.idjenisAsin.value = id;

    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Martabak Ajib \nHaji Sendi",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/martabakmakaroni.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 244,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xFFE3F8FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Martabak Telur Isi Makaroni',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: blackcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp20.000',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: yellowcolor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'Detail Produk',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackcolor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Martabak telur dengan varian isi makaroni dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greycolor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            StreamBuilder<QuerySnapshot>(
                              stream: datamartabak
                                  .where('id',
                                      isEqualTo:
                                          "${myCounterController.idjenisAsin}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_Martabak(
                                                myCounterController
                                                    .hargajenisAsin
                                                    .value = e.get('harga'),
                                                myCounterController.jenisAsin
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisAsin
                                                    .value = e.get('id'),
                                              ),
                                            )
                                            .toList(),
                                      )
                                    : Text('Loading...');
                              },
                            ),
                            SizedBox(
                              height: 120,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                padding: EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                highlightElevation: 0,
                                disabledElevation: 0,
                                onPressed: () {
                                  print(myCounterController.jenisAsin);
                                  print(myCounterController.hargajenisAsin);
                                  print(id);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananAsin();
                                      },
                                    ),
                                  );
                                },
                                color: yellowcolor,
                                child: Text(
                                  'Pesan',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
