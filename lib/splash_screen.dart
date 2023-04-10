import 'package:flutter/material.dart';
import 'package:sinhala_sl_system/AppColors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinhala_sl_system/main.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = new AppColors();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            SizedBox(
              height: 4.w,
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
              height: 20.h,
            ),
            Container(
                margin: EdgeInsets.only(bottom: 2.5.h),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Text(
                    'NEXT',
                    style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  colors.buttoncolor,
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.3.h),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.white),
                  ),
                  ),
                    ).
                  
                  //   Container(
                  //     alignment: Alignment.bottomCenter,
                  //     child: Text(
                  //       'කතා කරන අකුරු',
                  //       style: GoogleFonts.albertSans(
                  //         color: Colors.black45,
                  //         fontSize: 30,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                   
                   
                
            
        
        
          
      
         
        ), 
        ),  ],
        )
      )
      
    
  }
}
