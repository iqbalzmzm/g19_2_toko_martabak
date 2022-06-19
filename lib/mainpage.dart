import 'package:flutter/material.dart';
import 'package:g19_2_toko_martabak/counter_controller.dart';
import 'package:g19_2_toko_martabak/martabakmanis/martabakmanis.dart';
import 'package:g19_2_toko_martabak/riwayat.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:g19_2_toko_martabak/contact.dart';

import 'package:g19_2_toko_martabak/martabakmanis/detail_martabakmanis.dart';
import 'package:g19_2_toko_martabak/martabaktelor/detail_martabaktelor.dart';
import 'package:g19_2_toko_martabak/martabaktelor/martabaktelor.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController myCounterController = Get.put(CounterController());
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(top: 50),
              margin: EdgeInsets.only(bottom: 0),
              decoration: BoxDecoration(
                color: Color(0xFFFFA952),
              ),
              child: Text(
                "Martabak Terbaik\nSe-Nusantara",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 5),
            ListTile(
              leading: Icon(Icons.food_bank_rounded),
              title: Text(
                "Martabak Telur",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return DetailMartabakTelor();
                    },
                  ),
                );
              },
              tileColor: Color(0xFFE3F8FF),
            ),
            SizedBox(height: 5),
            ListTile(
              leading: Icon(Icons.food_bank_rounded),
              title: Text(
                "Martabak Manis",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return DetailMartabakManis();
                    },
                  ),
                );
              },
              tileColor: Color(0xFFE3F8FF),
            ),
            SizedBox(height: 5),
            ListTile(
              leading: Icon(Icons.history_sharp),
              title: Text(
                "Riwayat",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return Riwayat();
                    },
                  ),
                );
              },
              tileColor: Color(0xFFE3F8FF),
            ),
            SizedBox(height: 5),
            ListTile(
              leading: Icon(Icons.mail_outline_rounded),
              title: Text(
                "Contact Us",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return ContactUs();
                    },
                  ),
                );
              },
              tileColor: Color(0xFFE3F8FF),
            ),
          ],
        ),
        backgroundColor: Color(0xFFE3F8FF),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 30),
              Container(
                child: Text(
                  "Martabak Best Seller",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                      fontSize: 25,
                      color: Color(0xFFFFA952),
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return DetailManis6();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: martabakTerlaris(
                        deskripsi: "Martabak Manis Durian",
                        foto: "assets/durian2.jpg",
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return DetailManis4();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: martabakTerlaris(
                        deskripsi: "Martabak Manis Blueberry",
                        foto: "assets/blueberry2.jpg",
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return DetailScreen7();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: martabakTerlaris(
                        deskripsi: "Martabak Telur Jagung",
                        foto: "assets/martabakjagung2.jpg",
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return DetailScreen1();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(left: 0, right: 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: martabakTerlaris(
                        deskripsi: "Martabak Telur Daging Sapi",
                        foto: "assets/martabakdagingsapi2.jpg",
                      ),
                    ),
                    SizedBox(width: 30),
                  ],
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return DetailMartabakTelor();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: 0, right: 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Martabak(
                  Jenis: "Martabak Telur",
                  desc: "Aneka Martabak Telur",
                  gambar: "assets/MartabakTelur.jpg",
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return DetailMartabakManis();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: 0, right: 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Martabak(
                  Jenis: "Martabak Manis",
                  desc: "Aneka Martabak Manis",
                  gambar: "assets/MartabakManis.png",
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }
}

class Martabak extends StatelessWidget {
  const Martabak(
      {Key? key, required this.Jenis, required this.desc, required this.gambar})
      : super(key: key);
  final String Jenis;
  final String desc;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 250,
      decoration: BoxDecoration(
        color: Color(0xFFFFA952),
        image: DecorationImage(
            image: AssetImage(gambar), alignment: Alignment.topCenter),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            Jenis,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
          ),
          Text(
            desc,
            style: GoogleFonts.montserrat(
                fontSize: 15,
                color: Color(0xFFEEEEEE),
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
          ),
        ],
      ),
    );
  }
}

class martabakTerlaris extends StatelessWidget {
  const martabakTerlaris(
      {Key? key, required this.deskripsi, required this.foto})
      : super(key: key);

  final String deskripsi;
  final String foto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 140,
      decoration: BoxDecoration(
        color: Color(0xFFFFA952),
        image: DecorationImage(
            image: AssetImage(foto), alignment: Alignment.topCenter),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            deskripsi,
            style: GoogleFonts.montserrat(
                fontSize: 10,
                color: Color(0xFFEEEEEE),
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8),
          ),
        ],
      ),
    );
  }
}
