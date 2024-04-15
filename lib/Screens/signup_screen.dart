import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/login_screen.dart';
import 'package:grocery_app/ui_helper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "GolosText-Bold",
                  color: CupertinoColors.activeGreen
                )
              ),
              Text(
                "Create an new account",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "GolosText-SemiBold",
                  color: Colors.grey,
                )
              ),
              SizedBox(height: 40,),
              UiHelper.customTextfields(
                icon: Icon(Icons.person),
                lable: "username",
                hintText: "Create new username",
                kaybordTextInputType: TextInputType.text
              ),
              SizedBox(height: 20,),
              UiHelper.customTextfields(
                  icon: Icon(Icons.email),
                  lable: "email",
                  hintText: "Enter email account",
                  kaybordTextInputType: TextInputType.emailAddress
              ),
              SizedBox(height: 20,),
              UiHelper.customTextfields(
                  icon: Icon(Icons.phone),
                  lable: "phone",
                  hintText: "Enter your number",
                  kaybordTextInputType: TextInputType.phone
              ),
              SizedBox(height: 20,),
              UiHelper.customTextfields(
                  icon: Icon(Icons.password),
                  lable: "password",
                  hintText: "Create your password",
                  kaybordTextInputType: TextInputType.text
              ),
              SizedBox(height: 20,),
              UiHelper.customTextfields(
                  icon: Icon(Icons.password),
                  lable: "confirm password",
                  hintText: "Re-enter your password",
                  kaybordTextInputType: TextInputType.visiblePassword
              ),
              SizedBox(height: 40,),
              UiHelper.customButton(
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                width: 330,
                height: 50,
                text: "Create Account",
                fontsize: 20
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                      },
                      child: Text(
                        "Login",
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
