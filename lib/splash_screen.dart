import 'package:flutter/material.dart';
import 'package:sinhala_sl_system/AppColors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinhala_sl_system/homepage.dart';
import 'package:sinhala_sl_system/main.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = new AppColors();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 15.h,
          ),
          Container(
            width: 25.h,
            height: 40.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home_icon.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Text(
              'HandyTalk',
              style: GoogleFonts.lilyScriptOne(
                color: Colors.black,
                fontSize: 70,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            alignment: Alignment.center,
            child: OutlinedButton(
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 3.h,
                    fontWeight: FontWeight.w400,
                    // letterSpacing: 0.1.w)
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Color.fromARGB(255, 252, 255, 83),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 2.h),
                )),
          )
        ],
      ),
    );
  }
}
