import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/home_screen.dart';
import 'package:grocery_app/const_names.dart';
import 'package:grocery_app/ui_helper.dart';

class OnboardingScreen extends StatelessWidget {

  String? userName;
  OnboardingScreen({required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Image.asset(onboardImage,height: double.infinity,fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: UiHelper.customButton(() {
              Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context)=> HomeScreen()));
            }, width: 250, height: 50, text: "Shop Now", fontsize: 25),
          ),
          Center(
            child: Column(
               children: <Widget>[
                const SizedBox(height: 30),
                UiHelper.circleAvetarFixed(),
                const SizedBox(height: 20),
                UiHelper.customStartingTextBold(text: "Get Your Groceries\nDelivered to your home"),
                const SizedBox(height: 20),
                UiHelper.customStartingTextRegular(text: "The best delivery app for town for\ndelivering your daily freshh groceries"),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
