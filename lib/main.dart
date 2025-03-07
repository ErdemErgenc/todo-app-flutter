import 'package:flutter/material.dart';
import 'package:to_do_app_demo1/home_page.dart';
import 'package:to_do_app_demo1/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

