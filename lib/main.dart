import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:scaled_app/scaled_app.dart';

import 'package:sinhala_sl_system/splash_screen.dart';
import 'package:sizer/sizer.dart';

void main() => runAppScaled(
      DevicePreview(
        builder: (context) => Home(), // Wrap your app
      ),
    );

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
      return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
