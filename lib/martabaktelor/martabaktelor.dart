import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:g19_2_toko_martabak/martabaktelor/menu_card.dart';
import 'package:g19_2_toko_martabak/martabaktelor/menu.dart';
import 'package:g19_2_toko_martabak/martabaktelor/thememartabak.dart';

class DetailMartabakTelor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 20,
            ),
            child: ListView(
              children: [
                Text(
                  'Martabak Telur',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: blackcolor,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Pilihan Menu',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: blackcolor,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                MenuCard1(
                  Menu(
                    id: 1,
                    gambar: 'assets/martabakdagingsapi.jpg',
                    nama: 'Martabak Telur Isi Daging Sapi',
                    harga: 30000,
                    detailproduk:
                        'Martabak telur dengan varian isi daging sapi dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                MenuCard2(
                  Menu(
                    id: 2,
                    gambar: 'assets/martabakdagingayam.jpg',
                    nama: 'Martabak Telur Isi Daging Ayam',
                    harga: 20000,
                    detailproduk:
                        'Martabak telur dengan varian isi daging ayam dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                MenuCard3(
                  Menu(
                    id: 3,
                    gambar: 'assets/martabaksayur.png',
                    nama: 'Martabak Telur Isi Sayuran',
                    harga: 15000,
                    detailproduk:
                        'Martabak telur dengan varian isi Sayuran dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                MenuCard4(
                  Menu(
                    id: 4,
                    gambar: 'assets/martabakjamur.jpg',
                    nama: 'Martabak Telur Isi Jamur',
                    harga: 18000,
                    detailproduk:
                        'Martabak telur dengan varian isi jamur dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                MenuCard5(
                  Menu(
                    id: 5,
                    gambar: 'assets/martabakbaksosapi.jpg',
                    nama: 'Martabak Telur Isi Bakso Sapi',
                    harga: 25000,
                    detailproduk:
                        'Martabak telur dengan varian isi bakso sapi dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                MenuCard6(
                  Menu(
                    id: 6,
                    gambar: 'assets/martabakkornet.jpg',
                    nama: 'Martabak Telur Isi Kornet',
                    harga: 25000,
                    detailproduk:
                        'Martabak telur dengan varian isi kornet dengan bumbu yang dijamin bakalan buat kamu ketagihan.',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
