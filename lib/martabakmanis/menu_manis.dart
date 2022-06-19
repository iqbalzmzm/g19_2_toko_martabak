import 'package:flutter/material.dart';
import 'package:g19_2_toko_martabak/martabakmanis/detail_martabakmanis.dart';
import 'package:g19_2_toko_martabak/martabakmanis/thememanis.dart';
import 'package:g19_2_toko_martabak/martabakmanis/menu2.dart';

class MenuCard1 extends StatelessWidget {
  final Menu2 menu;
  MenuCard1(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailManis1()));
      },
      child: Container(
        child: Row(
          children: [
            Image.asset(
              menu.gambar,
              width: 112,
              height: 112,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${menu.nama}',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: blackcolor,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Row(
                  children: [
                    Text(
                      'Rp ${menu.harga}',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: yellowcolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard2 extends StatelessWidget {
  final Menu2 menu;
  MenuCard2(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailManis2()));
      },
      child: Container(
        child: Row(
          children: [
            Image.asset(
              menu.gambar,
              width: 112,
              height: 112,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${menu.nama}',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: blackcolor,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Row(
                  children: [
                    Text(
                      'Rp ${menu.harga}',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: yellowcolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard3 extends StatelessWidget {
  final Menu2 menu;
  MenuCard3(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailManis3()));
      },
      child: Container(
        child: Row(
          children: [
            Image.asset(
              menu.gambar,
              width: 112,
              height: 112,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${menu.nama}',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: blackcolor,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Row(
                  children: [
                    Text(
                      'Rp ${menu.harga}',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: yellowcolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard4 extends StatelessWidget {
  final Menu2 menu;
  MenuCard4(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailManis4()));
      },
      child: Container(
        child: Row(
          children: [
            Image.asset(
              menu.gambar,
              width: 112,
              height: 112,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${menu.nama}',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: blackcolor,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Row(
                  children: [
                    Text(
                      'Rp ${menu.harga}',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: yellowcolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard5 extends StatelessWidget {
  final Menu2 menu;
  MenuCard5(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailManis5()));
      },
      child: Container(
        child: Row(
          children: [
            Image.asset(
              menu.gambar,
              width: 112,
              height: 112,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${menu.nama}',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: blackcolor,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Row(
                  children: [
                    Text(
                      'Rp ${menu.harga}',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: yellowcolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard6 extends StatelessWidget {
  final Menu2 menu;
  MenuCard6(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailManis6()));
      },
      child: Container(
        child: Row(
          children: [
            Image.asset(
              menu.gambar,
              width: 112,
              height: 112,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${menu.nama}',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: blackcolor,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Row(
                  children: [
                    Text(
                      'Rp ${menu.harga}',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: yellowcolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
