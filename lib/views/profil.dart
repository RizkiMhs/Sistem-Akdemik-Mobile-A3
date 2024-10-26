import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/color.dart';
import 'package:flutter_application_1/views/homepage.dart';
import 'package:flutter_application_1/views/login2.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            child: AppBar(
              backgroundColor: greencolor,
              flexibleSpace: Padding(
                padding: EdgeInsets.only(top: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Informasi Akun",
                      style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 25,
                          color: whitecolor),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Text(
                        "semester 1",
                        style: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 14,
                            color: whitecolor),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 82,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
              color: Color(0xFFFF9100),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Image(
                    image: AssetImage('asset/image/profile.png'),
                    width: 57,
                    height: 57,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat Datang',
                        style: TextStyle(
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      Text(
                        'Pulan Bin Fulan',
                        style: TextStyle(
                          fontFamily: 'Poppinsmedium',
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      Text(
                        '230199080',
                        style: TextStyle(
                          fontFamily: 'PoppinsRegular',
                          fontSize: 12,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 53,
            decoration: BoxDecoration(
              color: whitecolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "status mahasiswa",
                      style: TextStyle(
                          fontFamily: 'Poppinssemibold',
                          fontSize: 18,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: 67,
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: greencolor),
                      ),
                      child: Center(
                        child: Text(
                          "Aktif",
                          style: TextStyle(
                              fontFamily: 'Poppinssemibold',
                              fontSize: 12,
                              color: greencolor),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 53,
            decoration: BoxDecoration(
              color: whitecolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "data diri",
                      style: TextStyle(
                          fontFamily: 'Poppinssemibold',
                          fontSize: 18,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: 67,
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          ">",
                          style: TextStyle(
                              fontFamily: 'Poppinssemibold',
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 53,
            decoration: BoxDecoration(
              color: whitecolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ubah password",
                      style: TextStyle(
                          fontFamily: 'Poppinssemibold',
                          fontSize: 18,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: 67,
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          ">",
                          style: TextStyle(
                              fontFamily: 'Poppinssemibold',
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext) => const LoginTwo()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 53,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "keluar",
                        style: TextStyle(
                            fontFamily: 'Poppinssemibold',
                            fontSize: 18,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFF9100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 65,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: (BuildContext) => const Pesan()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Image.asset('asset/image/Circled Envelope.png'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext) => const Homepage()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Image.asset('asset/image/Home.png'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset('asset/image/Male User.png'),
                ),
              ],
            ),
          ],

          //   IconButton(
          //     icon: Icon(Icons.home),
          //     onPressed: () {},
          //   ),
          //   IconButton(
          //     icon: Icon(Icons.notifications),
          //     onPressed: () {},
          //   ),
          //   IconButton(
          //     icon: Icon(Icons.person),
          //     onPressed: () {},
          //   ),
        ),
      ),
    );
  }
}
