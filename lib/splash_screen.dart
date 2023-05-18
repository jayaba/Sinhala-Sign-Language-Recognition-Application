import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinhala_sign_lan_app/Impl/homepage.dart';
import 'package:sinhala_sign_lan_app/Impl/welcome_one.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';

class SplashScreen extends StatelessWidget {
  // const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = new AppColors();
    return Scaffold(
      
       backgroundColor: Colors.yellow,
    //  backgroundColor: colors.btnclr,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 15.h,
          ),
          Container(
            width:95.w,
            height: 40.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home_icon3.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            child: Text(
              'HandyTalk',
              style: GoogleFonts.dancingScript(
                color: Colors.black87,
                fontSize: 10.h,
             //   fontWeight: FontWeight.w100,
               // fontWeight: FontWeight.w100,
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
                    color: Colors.black87,
                    fontSize: 3.h,
                    fontWeight: FontWeight.w300,
                    // letterSpacing: 0.1.w)
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeFirstPage()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  // primary: Colors.red,
                  backgroundColor: Colors.yellow,
                  side: BorderSide(
                    color: Colors.black45,
                    width:0.4.w,
                  ),
                 // backgroundColor: Color.fromARGB(255, 252, 255, 83),
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
