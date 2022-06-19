import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:g19_2_toko_martabak/counter_controller.dart';
import 'package:g19_2_toko_martabak/item_martabakmanis.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:g19_2_toko_martabak/Form_Manis.dart';
import 'package:g19_2_toko_martabak/martabakmanis/thememanis.dart';
import 'package:g19_2_toko_martabak/martabakmanis/martabakmanis.dart';

class DetailManis1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String id = "1";
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('MartabakManis');
    myCounterController.idjenisManis.value = id;
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
              'assets/pandan.jpeg',
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
                                  'Martabak Manis Rasa Pandan',
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
                                'Hijau, cerah, dan wangi! Yup, siapa yang bisa tahan godaan dari aroma pandan yang harum.\n\nKamu bisa menikmati martabak pandan hijau dengan harga yang sangat terjangkau!',
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
                                          "${myCounterController.idjenisManis}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_MartabakManis(
                                                myCounterController
                                                    .hargajenisManis
                                                    .value = e.get('harga'),
                                                myCounterController.jenisManis
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisManis
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
                                  print(myCounterController.jenisManis);
                                  print(myCounterController.hargajenisManis);
                                  print(id);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananManis();
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

class DetailManis2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String id = "2";
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('MartabakManis');
    myCounterController.idjenisManis.value = id;
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
              'assets/keju.jpeg',
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
                                  'Martabak Manis Rasa Keju',
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
                                  'Rp35.000',
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
                                'Martabak keju yang lumer dimulut, enak dilidah dan sangat menggugah selera. Tidak bikin eneg, manis, dan porsinya pas!',
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
                                          "${myCounterController.idjenisManis}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_MartabakManis(
                                                myCounterController
                                                    .hargajenisManis
                                                    .value = e.get('harga'),
                                                myCounterController.jenisManis
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisManis
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
                                  print(myCounterController.jenisManis);
                                  print(myCounterController.hargajenisManis);
                                  print(id);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananManis();
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

class DetailManis3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String id = "3";
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('MartabakManis');
    myCounterController.idjenisManis.value = id;
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
              'assets/cokelat.jpg',
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
                                  'Martabak Rasa Cokelat',
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
                                  'Rp35.000',
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
                                'Martabak cokelat kacang klasik yang legendaris karena rasa legit enaknya.\n\nApalagi adonan martabaknya empuk dan juga harum aromanya.',
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
                                          "${myCounterController.idjenisManis}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_MartabakManis(
                                                myCounterController
                                                    .hargajenisManis
                                                    .value = e.get('harga'),
                                                myCounterController.jenisManis
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisManis
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
                                  print(myCounterController.jenisManis);
                                  print(myCounterController.hargajenisManis);
                                  print(id);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananManis();
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

class DetailManis4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String id = "4";
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('MartabakManis');
    myCounterController.idjenisManis.value = id;
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
              'assets/blueberry.jpg',
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
                                  'Martabak Manis Rasa Blueberry',
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
                                  'Rp45.000',
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
                                'Berry lovers, nikmati segarnya selai blueberry yang lembut di setiap potong Martabak Blueberry.\n\nCocok untuk disantap bersama dengan keluarga dan pas untuk disantap saat meeting di pagi hari.',
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
                                          "${myCounterController.idjenisManis}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_MartabakManis(
                                                myCounterController
                                                    .hargajenisManis
                                                    .value = e.get('harga'),
                                                myCounterController.jenisManis
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisManis
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
                                  print(myCounterController.jenisManis);
                                  print(myCounterController.hargajenisManis);
                                  print(id);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananManis();
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

class DetailManis5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String id = "5";
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('MartabakManis');
    myCounterController.idjenisManis.value = id;
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
              'assets/kismis.jpg',
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
                                  'Martabak Manis Rasa Kismis',
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
                                'Sebagai santapan sore yang mengenyangkan dan dipercaya dapat membantu agar selalu awet muda dengan kismis.\n\nLebih mantap lagi kalau dinikmati bersama dengan secangkir teh hangat sambil bersantai.',
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
                                          "${myCounterController.idjenisManis}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_MartabakManis(
                                                myCounterController
                                                    .hargajenisManis
                                                    .value = e.get('harga'),
                                                myCounterController.jenisManis
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisManis
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
                                  print(myCounterController.jenisManis);
                                  print(myCounterController.hargajenisManis);
                                  print(id);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananManis();
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

class DetailManis6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String id = "6";
    final CounterController myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference datamartabak = firestore.collection('MartabakManis');
    myCounterController.idjenisManis.value = id;
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
              'assets/durian.jpg',
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
                                  'Martabak Manis Rasa Durian',
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
                                  'Rp50.000',
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
                                'Disini martabak manisnya disajikan dengan isian yang berbeda lho, yakni daging durian premium segar yang manis dan legit.\n\nMartabak manis isi Durian, salah satu menu best seller dari Martabak Ajib Haji Sendi.',
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
                                          "${myCounterController.idjenisManis}")
                                  .snapshots(),
                              builder: (_, snapshot) {
                                return (snapshot.hasData)
                                    ? Column(
                                        children: snapshot.data!.docs
                                            .map(
                                              (e) => Item_MartabakManis(
                                                myCounterController
                                                    .hargajenisManis
                                                    .value = e.get('harga'),
                                                myCounterController.jenisManis
                                                    .value = e.get('jenis'),
                                                myCounterController.idjenisManis
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
                                  print(myCounterController.jenisManis);
                                  print(myCounterController.hargajenisManis);
                                  print(id);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return DataPesananManis();
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
