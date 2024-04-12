import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_app/Screens/cart_screen.dart';
import 'package:grocery_app/const_names.dart';

import '../ui_helper.dart';

class ProductDetailScreen extends StatefulWidget {

  String? img;
  String? headText;
  String? descriptText;

  ProductDetailScreen({
    required this.img,
    required this.headText,
    required this.descriptText,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(243, 245, 247, 1),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(100),bottomLeft:  Radius.circular(100)),
                    image: DecorationImage(
                      image: AssetImage(widget.img!),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new, size: 20, color: Colors.black,)
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.search, size: 20, color: Colors.black,)
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.headText!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'GolosText-Bold',
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            counter--;
                          });
                        },
                        icon: Icon(Icons.remove, color: Colors.white, size: 18,)),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      counter.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'GolosText-Bold',
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.green,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            counter++;
                          });
                        },
                        icon: Icon(Icons.add, color: Colors.white, size: 18,)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  widget.descriptText!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: 'GolosText-SemiBold',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.pink
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Welcome to our groceries application, your one-stop destination for fresh and premium-quality produce, sourced directly from local farms and trusted suppliers.",
                    textScaler: TextScaler.linear(0.8),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.productDescriptCards(
                iconPath: 'assets/icons/organic-icon.svg',
                title: '100%',
                subtitle: 'organic'
              ),
              UiHelper.productDescriptCards(
                iconPath: 'assets/icons/calender-icon.svg',
                title: '1 Year',
                subtitle: 'Expiration'
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.productDescriptCards(
                  iconPath: 'assets/icons/star-icon.svg',
                  title: '4.8 (246)',
                  subtitle: 'Review'
              ),
              UiHelper.productDescriptCards(
                  iconPath: 'assets/icons/fire-icon.svg',
                  title: '80 kcal',
                  subtitle: '100 gram'
              ),
            ],
          ),
          SizedBox(height: 10,),
          UiHelper.customButton(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
          }, width: 350, height: 50, text: "Add to cart", fontsize: 20),
        ],
      )
    );
  }
}
