import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinhala_sign_lan_app/Impl/learning.dart';
import 'package:sizer/sizer.dart';

class N extends StatefulWidget {
  const N({ Key? key }) : super(key: key);

  @override
  State<N> createState() => _NState();
}

class _NState extends State<N> {
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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5.h),
            height: 40.h,
            width: 90.w,
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              borderRadius: BorderRadius.circular(60),
            ),

            // borderRadius: BorderRadius.only(s
            //     bottomLeft: Radius.circular(7.h),
            //     bottomRight: Radius.circular(7.h))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // color: Colors.red,
                  height: 28.h,
                  margin: EdgeInsets.only(top: 6.h),
                  child: Text(
                    "න",
                    style: GoogleFonts.poppins(
                      fontSize: 20.h,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2.h),
                  color: Colors.black,
                  height: 5.h,
                  width: 0.3.h,
                ),
                Container(
                    //color: Colors.blue,
                    height: 23.h,
                    width: 10.h,
                    child: Image(
                      image: AssetImage('assets/images/lrNN.png'),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 3.2.h),
                height: 6.h,
                width: 40.w,
                child: Text(
                  "Description",
                  style: GoogleFonts.quicksand(fontSize: 4.h),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 1.2.h),
                  child: Icon(
                    Icons.document_scanner_rounded,
                    size: 3.h,
                  ))
            ],
          ),
          SizedBox(
            height: 0.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 3.2.h),
            height: 25.h,
            width: 90.w,
            child: Text(
              "Holding up your dominant hand with your fingers spread apart, then bend your middle and ring fingers down so that the tips touch the base of your thumb while keeping your index, pinky, and thumb fingers extended. This creates a shape that also resembles the letter 'N' in written form.In Sinhala, 'න' is pronounced as 'na', with a nasal sound that is produced by closing the mouth and allowing air to pass through the nose.",
              style: GoogleFonts.poppins(fontSize: 2.h),
              textAlign: TextAlign.start,
            ),
          ),
          FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LearningScreen(),
                    //builder: (context) => HomePage(),
                  ),
                );
              },
              backgroundColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              splashColor: Colors.white,
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}