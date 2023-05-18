import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinhala_sign_lan_app/Impl/SignToTextImg.dart';
import 'package:sinhala_sign_lan_app/Impl/homepage.dart';
import 'package:sinhala_sign_lan_app/main.dart';
import 'package:sizer/sizer.dart';
import 'package:tflite/tflite.dart';

class SgnToTextImplTwo extends StatefulWidget {
  const SgnToTextImplTwo({ Key? key }) : super(key: key);

  @override
  State<SgnToTextImplTwo> createState() => _SgnToTextImplTwoState();
}

class _SgnToTextImplTwoState extends State<SgnToTextImplTwo> {  CameraImage? imgCanera;
  bool isworking = false;
  CameraController? cameraController;
  String result = "";
  loadModel() async {
    await Tflite.loadModel(
        model: "assets/modelFiltered.tflite",
        labels: "assets/labelsfiltered.txt");
  }  initCamera() {
    cameraController = CameraController(cameras![0], ResolutionPreset.medium);
    cameraController!.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {
        cameraController!.startImageStream((imagesFromStream) => {
              if (!isworking)
                {
                  isworking = true,
                  imgCanera = imagesFromStream,
                  runModelOnStreamFrame(),
                }
            });
      });
    });
  }
  runModelOnStreamFrame() async {
    if (imgCanera != null) {
      var recognition = await Tflite.runModelOnFrame(
        bytesList: imgCanera!.planes.map((plane) {
          return plane.bytes;
        }).toList(),
        imageHeight: imgCanera!.height,
        imageWidth: imgCanera!.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 2,
        threshold: 0.1,
      );

      //result = "";
      recognition!.forEach((response) {
        setState(() {
          // result;
          result = response['label'];
        });
      });
      isworking = false;
    }
  }  @override
  void initState() {
    super.initState();
   //      u  initCamera();
    loadModel();
    initCamera();
  }

  @override
  void dispose() async {
    // TODO: implement dispose
    super.dispose();
    await Tflite.close();
    initCamera().then((value) => {cameraController!.dispose()});
    cameraController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        home: Scaffold(
          
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
                Container(
                  margin: EdgeInsets.all(2.h),
                  width: 90.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(3.h)),
                  child:
                      // onTap: (){
                      //   initCamera();
                      // },
                      Center(
                    child: Container(
                      height: 54.h,
                      width: 80.w,
                      child: imgCanera == null
                          ? Container(
                              // height: 80.h,
                              // width: 60.w,
                              // child: Icon(
                              //   Icons.camera_alt_outlined,
                              //   color: Colors.black,
                              // ),
                              )
                          : AspectRatio(
                              aspectRatio: cameraController!.value.aspectRatio,
                              child: CameraPreview(cameraController!),
                            ),
                    ),
                  ),
                ),  SizedBox(
              height: 3.h,
            ),
               Container(
              height: 7.h,
              width: 25.w,
              child: Card(
                shadowColor: Colors.black,
                elevation: 1.h,
                child: Center(
                  child: Text(
                    result,
                    style: GoogleFonts.poppins(
                        fontSize: 3.h, color: Colors.black54),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ), Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                      height: 7.h,
                      width: 40.w,
                      //color: Colors.red,
                      margin: EdgeInsets.only(bottom: 0.h),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                        //builder: (context) => HomePage(),
                      ),
                    );
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
                    ),   Container(
                  height: 7.h,
                  width: 40.w,
                  //color: Colors.red,
                  // margin: EdgeInsets.only(bottom: 10.h),
                  child: OutlinedButton(
                    onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ImgRecSignToText(),
                        //builder: (context) => HomePage(),
                      ),
                    );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "To Image Recognition",
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
                ),
                 ],
               ),
              ],
            )));
  }
}
