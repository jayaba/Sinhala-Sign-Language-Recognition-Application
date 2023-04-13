import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LearningScreen extends StatefulWidget {
  const LearningScreen({super.key});

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
          margin: EdgeInsets.only(left: 1.w),
          height: 1.h,
          width: 1.h,
          child: Image(
            image: AssetImage('assets/images/waving-hand1.gif'),
            //   color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
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
  const YYTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VVTile extends StatelessWidget {
  const VVTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RRTile extends StatelessWidget {
  const RRTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PPTile extends StatelessWidget {
  const PPTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NNTile extends StatelessWidget {
  const NNTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MMTile extends StatelessWidget {
  const MMTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LLTile extends StatelessWidget {
  const LLTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class KKTile extends StatelessWidget {
  const KKTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HHTile extends StatelessWidget {
  const HHTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GGTile extends StatelessWidget {
  const GGTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EETile extends StatelessWidget {
  const EETile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DDTile extends StatelessWidget {
  const DDTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BBTile extends StatelessWidget {
  const BBTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AATile extends StatelessWidget {
  const AATile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 7.h,
            width: 0.3.w,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.h,
          ),
          Container(
            height: 4.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 1.w),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Try Now",
                style: GoogleFonts.poppins(fontSize: 1.5.h),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
