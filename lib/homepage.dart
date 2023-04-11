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
          VoiceToSignTile()
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
      width: 90.w,
      height: 20.h,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 251, 255, 0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 5.h, top: 2.h, left: 3.2.h),
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
            height: 15.h,
            width: 15.h,
            child: Image(
              image: AssetImage('assets/images/homepage_logo.png'),
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
      width: 90.w,
      height: 20.h,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 251, 255, 0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 5.h, top: 2.h, left: 3.2.h),
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
            height: 15.h,
            width: 15.h,
            child: Image(
              image: AssetImage('assets/images/homepage_logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
