import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/mobile_login_screen.dart';
import 'package:grocery_app/Screens/onbording_screen.dart';
import 'package:grocery_app/Screens/signup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ui_helper.dart';

class LoginScreen extends StatelessWidget{

  TextEditingController user = TextEditingController();

  saveLogin() async{
    if(user==null){
      log("Please Enter UserName");
    }
    else{
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setBool("login", true);
      pref.setString("userName", user.text.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.circleAvetarFixed(70),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "GolosText-Bold",
                  color: CupertinoColors.activeGreen
                )
              ),
              Text(
                "Sign to continue",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "GolosText-SemiBold",
                  color: Colors.grey,
                )
              ),
              SizedBox(height: 60,),
              UiHelper.customTextfields(
                  icon: Icon(Icons.person),
                  lable: "USERNAME",
                  hintText: "Enter username",
                  kaybordTextInputType: TextInputType.name,
                  controller: user
              ),
              SizedBox(height: 20,),
              UiHelper.customTextfields(icon: Icon(Icons.lock), lable: "PASSWORD", hintText: "Enter password", kaybordTextInputType: TextInputType.number),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: TextButton(
                      onPressed: () async {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileLoginScreen()));
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontFamily: "GolosText-SemiBold"
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              UiHelper.customButton(
                () async {
                  saveLogin();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen(userName: user.text.toString())));
                },
                width: 300,
                height: 50,
                text: "Login",
                fontsize: 20
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                    },
                    child: Text(
                      "create a new account",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}