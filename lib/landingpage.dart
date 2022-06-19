import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:g19_2_toko_martabak/mainpage.dart';
import 'package:g19_2_toko_martabak/counter_controller.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String NoHp = '';
  final CounterController myCounterController = Get.put(CounterController());
  final ctrlNoHp = TextEditingController();

  void dispose() {
    ctrlNoHp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F8FF),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  "Welcome",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                child: Column(),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "Martabak Ajib",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "Menjual aneka macam martabak \nkesukaan kamu yang rasanya dijamin enak!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 10, right: 210),
                child: Text(
                  "Nomor Handphone   :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                width: 380,
                child: TextField(
                  maxLength: 12,
                  controller: ctrlNoHp,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )),
                    hintText: "Isi Nomor Handphone Anda",
                    prefixIcon: Icon(Icons.account_circle, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    myCounterController.nomor.value = ctrlNoHp.text;
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) {
                      return Home();
                    }));
                  },
                  child: Text(
                    "Pesan Sekarang",
                    style: TextStyle(fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFA952),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
