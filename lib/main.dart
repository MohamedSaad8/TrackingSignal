import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track_signal/views/on_start_view.dart';
import 'package:track_signal/widgets/trackSignal_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Track Signal',
      home: TrackSignalSplashScreen(
        nextScreen: OnStartView(),
      ),
    );
  }
}
