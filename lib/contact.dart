import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlig = Uri.parse('https://www.instagram.com/martabak_ajib/?hl=id');
void _launchUrlig() async {
  if (!await launchUrl(_urlig)) throw 'Could not launch $_urlig';
}

final Uri _urlwa = Uri.parse(
    'whatsapp://send?phone=+6285246193963&text=Welcome~To~Martabak~Ajib');
void _launchUrlwa() async {
  if (!await launchUrl(_urlwa)) throw 'Could not launch $_urlwa';
}

final Uri _urlfb = Uri.parse(
    'https://www.facebook.com/Martabak-AJIb-Antapani-926852190679495/');
void _launchUrlfb() async {
  if (!await launchUrl(_urlfb)) throw 'Could not launch $_urlfb';
}

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      appBar: AppBar(
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
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFA952),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "Contact Us",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/LogoAjib.png"),
                  ),
                  border: Border.all(
                    color: Color(0xFFFFA952),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "Jika anda memiliki pertanyaan atau keluhan, \nSilahkan hubungi kami melalui kontak di bawah ini.\nKami akan menanggapi pada jam operasional :\nSenin - Sabtu : 10.00 - 21.00 WITA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 210,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFFA952),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Whatsapp.png'),
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () => _launchUrlwa(),
                            child: Text(
                              "0852461939633",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Instagram.png'),
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () => _launchUrlig(),
                            child: Text(
                              "@martabak_ajib",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(left: 75, right: 20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Facebook.png'),
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () => _launchUrlfb(),
                            child: Text(
                              "Martabak Ajib",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
