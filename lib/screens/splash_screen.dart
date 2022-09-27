import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dash_app/screens/sign_in%20screen/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
    ()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder:
            (context) =>
                const SignInScreen()
        )
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Image.asset(
              'assets/image.png',
              height: 250,
              width: 250,
            ),
          ),
          const SizedBox(height: 50,),
          const Align(
            alignment: AlignmentDirectional.center,
            child: Center(
              child: Text(
                'Dash',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 60
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
