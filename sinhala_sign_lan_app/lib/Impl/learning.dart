import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinhala_sign_lan_app/Impl/A.dart';
import 'package:sinhala_sign_lan_app/Impl/B.dart';
import 'package:sinhala_sign_lan_app/Impl/D.dart';
import 'package:sinhala_sign_lan_app/Impl/E.dart';
import 'package:sinhala_sign_lan_app/Impl/G.dart';
import 'package:sinhala_sign_lan_app/Impl/H.dart';
import 'package:sinhala_sign_lan_app/Impl/KK.dart';
import 'package:sinhala_sign_lan_app/Impl/L.dart';
import 'package:sinhala_sign_lan_app/Impl/M.dart';
import 'package:sinhala_sign_lan_app/Impl/N.dart';
import 'package:sinhala_sign_lan_app/Impl/P.dart';
import 'package:sinhala_sign_lan_app/Impl/R.dart';
import 'package:sinhala_sign_lan_app/Impl/W.dart';
import 'package:sinhala_sign_lan_app/Impl/Y.dart';
import 'package:sinhala_sign_lan_app/Impl/homepage.dart';
import 'package:sizer/sizer.dart';

class LearningScreen extends StatefulWidget {
  @override
  State<LearningScreen> createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 1.3.h,top: 1.3.h),
            child: IconButton(
                onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    ),
                icon: Icon(Icons.arrow_back_ios,color: Colors.black,))),
        title: Container(
          margin: EdgeInsets.only(top: 3.4.w),
          child: Text(
            'Learning Enviroment',
            style: GoogleFonts.satisfy(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 3.8.h,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            // width: 93.w,
            margin: EdgeInsets.only(left: 3.w, right: 3.w),
            child: ListView(children: [
              AATile(),
              BBTile(),
              DDTile(),
              EETile(),
              GGTile(),
              HHTile(),
              KKTile(),
              LLTile(),
              MMTile(),
              NNTile(),
              PPTile(),
              RRTile(),
              VVTile(),
              YYTile(),
              SizedBox(
                height: 5.h,
              )
            ]),
          ),
        ),
      ]),
    );
  }
}

class YYTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Y(),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrYY.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "ය",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 7.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  "It is often combined with consonants to form conjuncts. ය is a common letter in Sinhala and is used in many words.",
                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VVTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => W(),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrVV.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "ව",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  " ව is a common letter in Sinhala and is used in many words.It is eighteenth letter of the Sinhala alphabet and represents the consonant sound.",
                  style: GoogleFonts.poppins(fontSize: 1.35.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RRTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => R(),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrRR.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "ර",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  "ර is the ninth letter of the Sinhala alphabet and represents the consonant sound 'ra'",
                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PPTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => P(),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrPP.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "ප",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  "ප is the seventh letter of the Sinhala alphabet and represents the consonant sound.",
                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NNTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => N()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrNN.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "න",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  " න is a common letter in Sinhala and is used in many words. It is often combined with other consonants to form conjuncts in written Sinhala.",
                  style: GoogleFonts.poppins(fontSize: 1.35.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MMTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => M()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrMM.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "ම",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  "It is a voiced bilabial nasal, which means it is pronounced by bringing both lips together and allowing air to flow through the nose",
                  style: GoogleFonts.poppins(fontSize: 1.36.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LLTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => L()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrLL.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "ල",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  "ල is the twelfth letter of the Sinhala alphabet and represents the consonant sound.",
                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KKTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => KK(),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrKK.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "ක",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  " It is a voiceless velar plosive, which means it is pronounced by stopping the airflow at the back of the mouth using the tongue and then releasing it.",
                  style: GoogleFonts.poppins(fontSize: 1.3.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HHTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => H(),
            //builder: (context) => HomePage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrHH.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "හ",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  "It is a voiceless glottal fricative, which means it is pronounced by forcing air through a narrow space between the vocal cords in the throat.",
                  style: GoogleFonts.poppins(fontSize: 1.36.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GGTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => G(),
            //builder: (context) => HomePage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrGG.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "ග",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  "It is often combined with other consonants to form conjuncts in written Sinhala.",
                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EETile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => E(),
            //builder: (context) => HomePage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrEE.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "එ",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  "It is pronounced as a short, unrounded vowel and is often used in Sinhala words to denote the sound 'e'",
                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DDTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => D(),
            //builder: (context) => HomePage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrDD.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "ඩ",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  "ඩ is the eighth letter of the Sinhala alphabet and represents the consonant sound 'da'",
                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BBTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => B(),
            //builder: (context) => HomePage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrBB.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.0.h),
              child: Text(
                "බ",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  "බ is the second letter of the Sinhala alphabet and represents the consonant sound 'ba'.",
                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AATile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => A(),
            //builder: (context) => HomePage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 4.h),
        height: 15.h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: 40.w,
                height: 15.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 173, 173, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2.w, top: 2.h),
                width: 35.w,
                height: 10.h,
                child: Image(
                  image: AssetImage('assets/images/lrAA.png'),
                  //   color: Color.fromARGB(255, 0, 0, 0),
                ),
              )
            ]),
            Container(
              height: 8.h,
              margin: EdgeInsets.only(left: 7.w, top: 2.h),
              child: Text(
                "අ",
                style: GoogleFonts.poppins(
                  fontSize: 5.5.h,
                ),
              ),
            ),
            SizedBox(
              width: 3.h,
            ),
            Container(
              height: 5.h,
              width: 0.3.w,
              color: Colors.black,
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 15.h,
              width: 10.h,
              margin: EdgeInsets.only(left: 1.w),
              child: Center(
                child: Text(
                  "අ is the first letter of the Sinhala alphabet and represents the vowel sound 'A'",
                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
