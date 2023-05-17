import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:sinhala_sign_lan_app/Impl/welcome_one.dart';
import 'package:sinhala_sign_lan_app/splash_screen.dart';
import 'package:sizer/sizer.dart';

import 'Impl/sign_rec_system.dart';

List<CameraDescription>? cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(App());
  //runApp(DevicePreview(builder: (context) => MyApp()));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
              theme: ThemeData(primaryColor: Colors.deepPurple),
              debugShowCheckedModeBanner: false,
             
            home: SplashScreen(),
            ));
  }
}
 