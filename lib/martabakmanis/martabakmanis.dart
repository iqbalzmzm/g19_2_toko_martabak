import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:g19_2_toko_martabak/martabakmanis/menu_manis.dart';
import 'package:g19_2_toko_martabak/martabakmanis/menu2.dart';
import 'package:g19_2_toko_martabak/martabakmanis/thememanis.dart';

class DetailMartabakManis extends StatelessWidget {
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
                  'Martabak Manis',
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
                  Menu2(
                    id: 1,
                    gambar: 'assets/pandan.jpeg',
                    nama: 'Martabak Manis Rasa Pandan',
                    harga: 30000,
                    detailproduk:
                        'Hijau, cerah, dan wangi! Yup, siapa yang bisa tahan godaan dari aroma pandan yang harum.\n\nKamu bisa menikmati martabak pandan hijau dengan harga yang sangat terjangkau!',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                MenuCard2(
                  Menu2(
                    id: 2,
                    gambar: 'assets/keju.jpeg',
                    nama: 'Martabak Manis Rasa Keju',
                    harga: 35000,
                    detailproduk:
                        'Martabak keju yang lumer dimulut, enak dilidah dan sangat menggugah selera. Tidak bikin eneg, manis, dan porsinya pas!',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                MenuCard3(
                  Menu2(
                    id: 3,
                    gambar: 'assets/cokelat.jpg',
                    nama: 'Martabak Manis Rasa Cokelat',
                    harga: 35000,
                    detailproduk:
                        'Martabak cokelat kacang klasik yang legendaris karena rasa legit enaknya.\n\nApalagi adonan martabaknya empuk dan juga harum aromanya.',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                MenuCard4(
                  Menu2(
                    id: 4,
                    gambar: 'assets/blueberry.jpg',
                    nama: 'Martabak Rasa Blueberry',
                    harga: 45000,
                    detailproduk:
                        'Berry lovers, nikmati segarnya selai blueberry yang lembut di setiap potong Martabak Blueberry.\n\nCocok untuk disantap bersama dengan keluarga dan pas untuk disantap saat meeting di pagi hari.',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                MenuCard5(
                  Menu2(
                    id: 5,
                    gambar: 'assets/kismis.jpg',
                    nama: 'Martabak Manis Rasa Kismis',
                    harga: 40000,
                    detailproduk:
                        'Sebagai santapan sore yang mengenyangkan dan dipercaya dapat membantu agar selalu awet muda dengan kismis.\n\nLebih mantap lagi kalau dinikmati bersama dengan secangkir teh hangat sambil bersantai.',
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                MenuCard6(
                  Menu2(
                    id: 6,
                    gambar: 'assets/durian.jpg',
                    nama: 'Martabak Manis Rasa Durian',
                    harga: 50000,
                    detailproduk:
                        'Disini martabak manisnya disajikan dengan isian yang berbeda lho, yakni daging durian premium segar yang manis dan legit.\n\nMartabak manis isi Durian, salah satu menu best seller dari Martabak Ajib Haji Sendi.',
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
