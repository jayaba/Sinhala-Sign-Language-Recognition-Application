import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sinhala_sign_lan_app/Impl/homepage.dart';
import 'package:sizer/sizer.dart';
import 'package:tflite/tflite.dart';

class ImgRecSignToText extends StatefulWidget {
  const ImgRecSignToText({Key? key}) : super(key: key);

  @override
  State<ImgRecSignToText> createState() => _ImgRecSignToTextState();
}

class _ImgRecSignToTextState extends State<ImgRecSignToText> {
  late File _image;
  late List _result;
  bool imageSelect = false;

  void initState() {
    super.initState();
    loadModel();
  }

  Future loadModel() async {
    Tflite.close();
    String? result;
    result = await Tflite.loadModel(
        model: "assets/modelFiltered.tflite",
        labels: "assets/labelsfiltered.txt");
    print("Model Status :  $result");
  }

  Future imageRecognition(File image) async {
    var recognitions = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 6,
        threshold: 0.05,
        imageMean: 127.5,
        imageStd: 127.5);

    setState(() {
      _result = recognitions!;
      _image = image;
      imageSelect = true;
    });
  }

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
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (imageSelect)
              ? Container(        
                //color: Colors.blue,    
               height: 40.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(3.h)
                ),
                   margin: EdgeInsets.only(top: 10.h),
                  child: Image.file(_image),
                )
              : Container(
               // color: Colors.red,
                height: 40.h,
                width: 90.w, decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(3.h)
                ),
                 margin: EdgeInsets.only(top: 10.h),
                  child: Opacity(
                    opacity: 0.5,
                    child: Center(
                      child: Text("No Image Selected",style: GoogleFonts.kanit(
                        fontSize: 3.5.h,
                        letterSpacing: 0.2.h
                      ),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
          SingleChildScrollView(
              child: Column(
            children: (imageSelect)
                ? _result.map((result) {
                    return Card(shadowColor: Colors.black,elevation: 1.h,
                   
                        child: Container(
                          height:7.h,
                          width: 25.w,
                //  color: Colors.red,
                      child: Center(
                        child: Text(
                          
                          "${result['label']}",
                          style:  TextStyle(
                            fontSize: 3.h,
                        color: Colors.black54
                          ),
                        ),
                      ),
                    ));
                  }).toList()
                : [],
          )),
          SizedBox(
            height: 10.h,
          ),
         
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(       
                  height: 7.h, 
                  width: 35.w,
                  //color: Colors.red,
                  margin: EdgeInsets.only(bottom: 10.h),
                  child: OutlinedButton(
                    onPressed: () {
                      pickTheImage();
                      //builder: (context) => HomePage(),
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Select Image",
                          style: GoogleFonts.poppins(fontSize: 1.5.h),
                        ),
                        Icon(
                          Icons.image_search,
                          size: 2.h,
                        )
                      ],
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
                ),   Container(       
                  height: 7.h, 
                  width: 35.w,
                  //color: Colors.red,
                  margin: EdgeInsets.only(bottom: 10.h),
                  child: OutlinedButton(
                    onPressed: () {
                        Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                        //builder: (context) => HomePage(),
                      ),
                    );
                      //builder: (context) => HomePage(),
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Back To Home",
                          style: GoogleFonts.poppins(fontSize: 1.5.h),
                        ),
                        Icon(
                          Icons.arrow_back_ios,
                          size: 2.h,
                        )
                      ],
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
          
        ],
      ),
    );
  }

  Future pickTheImage() async {
    final ImagePicker _pickImage = ImagePicker();
    final PickedFile pickedFile = await _pickImage.getImage(
      source: ImageSource.gallery,
    );
    File image = File(pickedFile.path);
    imageRecognition(image);
  }
}
