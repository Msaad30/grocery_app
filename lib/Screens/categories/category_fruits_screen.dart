import 'package:flutter/material.dart';

import '../../const_names.dart';
import '../../ui_helper.dart';
import '../product_detail_screen.dart';

class FruitsCategoryScreen extends StatefulWidget {
  const FruitsCategoryScreen({super.key});

  @override
  State<FruitsCategoryScreen> createState() => _FruitsCategoryScreenState();
}

class _FruitsCategoryScreenState extends State<FruitsCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Fruits",
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
                              imgPath: '$fruitsPath/mango-butter.png',
                              headText: 'Devgad mango hapus',
                              descriptText: '1Dozen, 340 Rs'
                          );
                        },
                        imgPath: "$fruitsPath/mango-butter.png",
                        headText: "Devgad mango hapus",
                        descriptText: "1Dozen, 340 Rs"
                    ),
                    UiHelper.homePageCards(
                        (){
                          productScreenNavigator(
                            imgPath: '$fruitsPath/grapes.png',
                            headText: 'Grapes',
                            descriptText: '1Kg, 135 Rs'
                        );
                      },
                      imgPath: "$fruitsPath/grapes.png",
                      headText: "Grapes",
                      descriptText: "1Kg, 135 Rs"
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
                            imgPath: '$fruitsPath/watermelon-product.png',
                            headText: 'Watermelon',
                            descriptText: '1 item/ 60 Rs'
                          );
                        },
                        imgPath: "$fruitsPath/watermelon.png",
                        headText: "Watermelon",
                        descriptText: "1 item/ 60 Rs"
                    ),
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
