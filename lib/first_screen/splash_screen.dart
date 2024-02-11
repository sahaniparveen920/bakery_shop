import 'dart:async';
import 'package:bakery_shop/singing_page/bakery_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => Bakerypage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF722F1E),
      body: Stack(
        children: <Widget>[
          // Background image
          Image(image: AssetImage('assets/splash/bakery icons bg (2).png'),
          fit: BoxFit.fill,
          ),
          // Content
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Logo
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: Image.asset(
                      'assets/splash/logo.png', // Replace 'logo.png' with your logo image asset
                      height: 300.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


