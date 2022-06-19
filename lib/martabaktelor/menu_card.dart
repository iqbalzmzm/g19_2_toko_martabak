import 'package:flutter/material.dart';
import 'package:g19_2_toko_martabak/martabaktelor/detail_martabaktelor.dart';
import 'package:g19_2_toko_martabak/martabaktelor/thememartabak.dart';
import 'package:g19_2_toko_martabak/martabaktelor/menu.dart';

class MenuCard1 extends StatelessWidget {
  final Menu menu;
  MenuCard1(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen1()));
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
  final Menu menu;
  MenuCard2(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen2()));
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
  final Menu menu;
  MenuCard3(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen3()));
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
  final Menu menu;
  MenuCard4(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen4()));
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
  final Menu menu;
  MenuCard5(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen5()));
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
  final Menu menu;
  MenuCard6(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen6()));
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

class MenuCard7 extends StatelessWidget {
  final Menu menu;
  MenuCard7(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen7()));
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

class MenuCard8 extends StatelessWidget {
  final Menu menu;
  MenuCard8(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen8()));
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

class MenuCard9 extends StatelessWidget {
  final Menu menu;
  MenuCard9(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen9()));
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

class MenuCard10 extends StatelessWidget {
  final Menu menu;
  MenuCard10(this.menu);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen10()));
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
