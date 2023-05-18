import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinhala_sign_lan_app/Impl/learning.dart';

import 'package:sizer/sizer.dart';

class LearningHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 7.h),
            child: Image(
              image: AssetImage('assets/images/lr2br.png'),
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: 93.w,
              margin: EdgeInsets.only(top: 10.h),
              child: Text(
                'Learning sign language is crucial for those who are deaf or hearing impaired, as well as their friends and family members. But, what many people may not realize is that sign language can be a valuable life skill for just about anyone to develop.',
                style: GoogleFonts.poppins(
                  fontSize: 2.h,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.h),
            child: FloatingActionButton(
              elevation: 0.4.h,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LearningScreen()));
              },
              child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
              backgroundColor:  Colors.yellow
            ),
          )
        ],
      ),
    );
  }
}
