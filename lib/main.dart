import 'package:flutter/material.dart';
import 'package:gotogetherapp_ios_v4/screens/splash_screen.dart';
import 'package:gotogetherapp_ios_v4/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Go Together App",
      home: SplashScreen(),
    );
  }
}

