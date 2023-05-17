import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinhala_sign_lan_app/Impl/welcome_two.dart';
import 'package:sinhala_sign_lan_app/app_colors.dart';
import 'package:sizer/sizer.dart';

class WelcomeFirstPage extends StatelessWidget {
  const WelcomeFirstPage({ Key? key }) : super(key: key);
 static AppColors colors = new AppColors();
  @override
  Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;
   // final screenHeight = MediaQuery.of(context).size.height;
   
    return Scaffold(
     
   
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
          child: Center(
            child: Container(
              height: 90.h,
              margin: EdgeInsets.only(bottom: 1.h),
              decoration: BoxDecoration(
              
             // color: colors.welcomeBoardColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                    bottomRight: Radius.circular(90)),
              ),
              child: Image.asset("assets/images/welcomeFirst.png"),
            ),
          ),
        ),
        // SizedBox(
        //   height: 8.h,
        // ),
        Container(
          margin: EdgeInsets.only(bottom: 9.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 1.w),
                width: 14.w,
                height: 2.5.w,
                decoration: BoxDecoration(
                //  color: colors.WelcomCont,
               color: Colors.yellow[700],
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 1.w),
                width: 3.w,
                height: 2.5.w,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 160, 180, 173),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 1.w),
                width: 3.w,
                height: 2.5.w,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 160, 180, 173),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          ),
        ),
        
        Container(
          margin: EdgeInsets.only(bottom: 4.h),
          child: Text(
            "Sinhala Sign Language",
            style: GoogleFonts.barlow(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                letterSpacing:0.1.h
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 0.h, top: 0.1.h),
          child: Text(
            "It's the message behind the hands that makes them beautiful.",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 2.h, top: 0.9.w),
          child: Text(
            "we are always there to assist you",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 2.5.h),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomeSecPage(),
                ),
              );
            },
            child: Text(
              'NEXT',
              style: GoogleFonts.nunito(
fontSize: 22.0, color: Colors.yellow[900],
              letterSpacing:0.5.h
              ),
            ),
            style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.only(left:7.h,right:7.h,top: 1.5.h,bottom: 1.5.h)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  
                    side: BorderSide(
                      color: Color.fromARGB(255, 160, 180, 173),
                    )),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
