import 'package:flutter/material.dart';
import 'package:flutter_dash_app/screens/allergy_and_information/allergy_information.dart';
import 'package:flutter_dash_app/screens/allergy_and_information/interested.dart';
import 'package:flutter_dash_app/screens/home_screen/home_screen.dart';
import 'package:flutter_dash_app/screens/splash_screen.dart';
// import 'package:flutter_dash_app/screens/widget/custom_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dash App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const SplashScreen(),
    );
  }
}
