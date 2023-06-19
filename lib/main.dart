import 'package:flutter/material.dart';
import 'package:grocery/Homepage.dart';
import 'package:grocery/Splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),debugShowCheckedModeBanner: false,
    //  home: SplashScreen()
      routes: {
        '/' : (context) => SplashScreen(),
    'Homepage' : (context) => Homepage(),
      },
    );
  }
}