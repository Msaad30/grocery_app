import 'package:flutter/material.dart';

class MeatsCategoryScreen extends StatelessWidget {
  const MeatsCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Meats Category",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "GolosText-SemiBold",
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Comming soon..",
          style: TextStyle(
            fontSize: 30,
            fontFamily: "GolosText-Bold",
          ),
        ),
      ),
    );
  }
}
