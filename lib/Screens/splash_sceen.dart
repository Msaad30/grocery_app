import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/home_screen.dart';
import 'package:grocery_app/Screens/login_screen.dart';
import 'package:grocery_app/Screens/mobile_login_screen.dart';
import 'package:grocery_app/const_names.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {

      SharedPreferences p = await SharedPreferences.getInstance();
      bool? value = p.getBool("login");

      if(value != null){
        if(value){
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }
        else{
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        }
      }
      else{
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              foregroundImage: AssetImage(appLogo),
              backgroundColor: Colors.white,
            )
          ]
        ),
      ),
      // Color.fromARGB(255, 34, 171, 72),
    );
  }
}