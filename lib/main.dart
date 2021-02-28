import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track_signal/views/on_start_view.dart';
import 'package:track_signal/widgets/trackSignal_splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'helper/binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      allowFontScaling: false,
      builder: () => GetMaterialApp(
        initialBinding: Binding(),
        title: 'Track Signal',
        home: TrackSignalSplashScreen(
          nextScreen: OnStartView(),
        ),
      ),
    );
  }
}
