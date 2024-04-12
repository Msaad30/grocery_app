import 'package:flutter/material.dart';
import 'package:grocery_app/ui_helper.dart';

import '../../const_names.dart';
import '../product_detail_screen.dart';

class VagitablesCategoryScreen extends StatefulWidget{
  const VagitablesCategoryScreen({super.key});

  @override
  State<VagitablesCategoryScreen> createState() => _VagitablesCategoryScreenState();
}

class _VagitablesCategoryScreenState extends State<VagitablesCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Vegitables",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "GolosText-SemiBold",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    UiHelper.homePageCards(
                       (){
                          productScreenNavigator(
                              imgPath: "$vegetablesPath/cabbage.png",
                              headText: 'Cabbage',
                              descriptText: '1Kg, 40 Rs'
                          );
                        },
                        imgPath: "$vegetablesPath/cabbage.png",
                        headText: "Cabbage",
                        descriptText: "1Kg, 40 Rs"
                    ),
                    UiHelper.homePageCards(
                        (){
                          productScreenNavigator(
                              imgPath: "$vegetablesPath/carrots_big.png",
                              headText: 'Carrots',
                              descriptText: '1Kg, 35 Rs'
                          );
                        },
                        imgPath: "$vegetablesPath/carrots.png",
                        headText: "Carrots",
                        descriptText: "1Kg, 35 Rs"
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    UiHelper.homePageCards(
                       (){
                          productScreenNavigator(
                              imgPath: "$vegetablesPath/coconuts-product.png",
                              headText: 'coconut',
                              descriptText: '1 item/ 40 Rs'
                          );
                        },
                        imgPath: "$vegetablesPath/coconut.png",
                        headText: "coconut",
                        descriptText: "1 item/ 40 Rs"
                    ),
                    UiHelper.homePageCards(
                        (){
                          productScreenNavigator(
                              imgPath: "$vegetablesPath/flower-product.png",
                              headText: 'flower',
                              descriptText: '1Kg, 35 Rs'
                          );
                        },
                        imgPath: "$vegetablesPath/fulawer.png",
                        headText: "flower",
                        descriptText: "1Kg, 35 Rs"
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    UiHelper.homePageCards(
                       (){
                          productScreenNavigator(
                              imgPath: "$vegetablesPath/garlic-product.png",
                              headText: 'Garlic',
                              descriptText: '1kg, 250 Rs'
                          );
                        },
                        imgPath: "$vegetablesPath/garlic.png",
                        headText: "Garlic",
                        descriptText: "1kg, 250 Rs"
                    ),
                    UiHelper.homePageCards(
                       (){
                          productScreenNavigator(
                              imgPath: "$vegetablesPath/lemons-product.png",
                              headText: 'carrots',
                              descriptText: '1 item/ 7 Rs'
                          );
                        },
                        imgPath: "$vegetablesPath/lemon.png",
                        headText: "Lemon",
                        descriptText: "1 item/ 7 Rs"
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    UiHelper.homePageCards(
                       (){
                          productScreenNavigator(
                              imgPath: "$vegetablesPath/carrots_big.png",
                              headText: 'carrots',
                              descriptText: '1Kg, 80 Rs'
                          );
                        },
                        imgPath: "$vegetablesPath/carrots.png",
                        headText: "carrots",
                        descriptText: "1Kg, 80 Rs"
                    ),
                    UiHelper.homePageCards(
                        (){
                          productScreenNavigator(
                              imgPath: "$vegetablesPath/beet.png",
                              headText: 'Red Beet',
                              descriptText: '1 item/ 15 Rs'
                          );
                        },
                        imgPath: "$vegetablesPath/beet.png",
                        headText: "Red Beet",
                        descriptText: "1 item/ 15 Rs"
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void productScreenNavigator({required String imgPath, required String headText, required String descriptText}){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailScreen(
      img: imgPath,
      headText: headText,
      descriptText: descriptText,
    )));
  }
}
