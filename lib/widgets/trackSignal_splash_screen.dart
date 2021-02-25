import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


class TrackSignalSplashScreen extends StatelessWidget {
 final Widget nextScreen;
 TrackSignalSplashScreen({this.nextScreen});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size ;
    return SplashScreenView(
      home: nextScreen,
      duration: 5000,
      imageSize: (size.height * 0.2).toInt(),
      imageSrc: "assets/images/logo.png",
      backgroundColor: Colors.white ,

    );
  }
}
