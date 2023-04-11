import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinhala_sl_system/AppColors.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppColors appColors = AppColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
            'HandyTalk',
            style: GoogleFonts.satisfy(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 3.8.h,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: SignToTextTile(),
          ),
          VoiceToSignTile(),
          SizedBox(
            height: 2.5.h,
          ),
          Container(
            // margin: EdgeInsets.only(left: 4.5.h),
            margin: EdgeInsets.only(left: 1.w),
            height: 5.h,
            width: 93.w,
            child: Text(
              "Learn Sign Language",
              style: GoogleFonts.play(fontSize: 3.5.h),
            ),
          ),
          Expanded(
              child: ListView(children: [
            FirstLearnTile(),
            FirstLearnTile(),
            FirstLearnTile(),
            FirstLearnTile(),
            FirstLearnTile(),
            FirstLearnTile(),
          ]))
        ],
      ),
    );
  }
}

class FirstLearnTile extends StatelessWidget {
  const FirstLearnTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 93.w,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 236, 236, 236),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 0.0.h),
              height: 17.h,
              width: 11.h,
              child: Image(
                image: AssetImage('assets/images/aa.png'),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 1.5.h, left: 1.h),
                height: 4.3.h,
                width: 10.h,
                child: Text(
                  "අ",
                  style: GoogleFonts.poppins(fontSize: 3.8.h),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0.h, left: 1.h),
                height: 2.5.h,
                width: 11.h,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Learn More",
                    style: GoogleFonts.poppins(fontSize: 1.4.h),
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 0, 0),
                    side: BorderSide(
                      color: Color.fromARGB(255, 3, 3, 3),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 11.h, bottom: 1.h),
            width: 6.h,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color.fromARGB(255, 155, 152, 113),
                size: 5.h,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class VoiceToSignTile extends StatelessWidget {
  const VoiceToSignTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.h),
      width: 93.w,
      height: 20.h,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 231, 231, 231),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 2.5.h, top: 2.h, left: 1.2.h),
                  child: Text(
                    "Voice To Sign",
                    style: GoogleFonts.play(fontSize: 3.5.h),
                  )),
              SizedBox(
                height: 1.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 3.h),
                height: 6.h,
                width: 21.h,
                child: Text(
                  "This feature recognizes the user's voice and gives the corresponding Sinhala character to it.",
                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                margin: EdgeInsets.only(right: 0.9.h),
                height: 5.h,
                width: 17.h,
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
          Container(
            margin: EdgeInsets.only(left: 1.0.h),
            height: 17.h,
            width: 16.h,
            child: Image(
              image: AssetImage('assets/images/voiceyosigntileImage.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class SignToTextTile extends StatelessWidget {
  const SignToTextTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.h),
      width: 94.w,
      height: 20.h,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 231, 231, 231),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 2.5.h, top: 2.h, left: 1.1.h),
                  child: Text(
                    "Sign To Text",
                    style: GoogleFonts.play(fontSize: 3.5.h),
                  )),
              SizedBox(
                height: 1.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 3.h),
                height: 6.h,
                width: 20.h,
                child: Text(
                  "This feature recognizes your sign and gives the corresponding Sinhala letters.",
                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 5.h,
                width: 17.h,
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
          Container(
            //     color: Colors.amber,

            margin: EdgeInsets.only(left: 1.0.h),
            height: 17.h,
            width: 16.h,
            child: Image(
              image: AssetImage('assets/images/homepage_logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
