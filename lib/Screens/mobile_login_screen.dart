import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/login_screen.dart';
import 'package:grocery_app/ui_helper.dart';

import '../const_names.dart';
import 'home_screen.dart';

class MobileLoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.circleAvetarFixed(),
            UiHelper.customStartingTextBold(text: "Enter your mobile\nnumber"),
            const SizedBox(height: 10),
            UiHelper.customStartingTextRegular(text: "We will send you a verification code"),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 85),
              child: Row(
                children: [
                  Text("+91 ",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "000 000 0000",
                        hintStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        alignLabelWithHint: true,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            UiHelper.customButton(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            }, width: 250, height: 50, text: "Continue", fontsize: 20),
            const SizedBox(height: 10),
            // UiHelper.customStartingTextRegular(text: "buy clicking continue you are aggreeing\to our turms of use"),
            const Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: "by clicking continue you will get\n",
                children:[
                  TextSpan(
                    text: "OTP",
                    style: TextStyle(
                      color: Colors.blue,
                    )
                  )
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}