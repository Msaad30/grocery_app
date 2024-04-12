import 'package:flutter/material.dart';

import '../../const_names.dart';
import '../../ui_helper.dart';
import '../product_detail_screen.dart';

class DairyCategoryScreen extends StatefulWidget {
  const DairyCategoryScreen({super.key});

  @override
  State<DairyCategoryScreen> createState() => _DairyCategoryScreenState();
}

class _DairyCategoryScreenState extends State<DairyCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dairy Products",
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
                              imgPath: "$dairyPath/baguette-rolls.png",
                              headText: 'Baguette Rolls',
                              descriptText: ''
                          );
                        },
                        imgPath: "$dairyPath/baguette-rolls.png",
                        headText: "Baguette Rolls",
                        descriptText: "1packet, 60 Rs"
                    ),
                    UiHelper.homePageCards(
                       (){
                          productScreenNavigator(
                              imgPath: "$dairyPath/cheese_piece.png",
                              headText: 'Cheese Piece',
                              descriptText: '1Kg, 235 Rs'
                          );
                        },
                        imgPath: "$dairyPath/cheese_piece.png",
                        headText: "Cheese Piece",
                        descriptText: "1Kg, 235 Rs"
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
                              imgPath: "$dairyPath/milk_packet.png",
                              headText: 'Milk Packet',
                              descriptText: '1 litr/ 80 Rs'
                          );
                        },
                        imgPath: "$dairyPath/milk_packet.png",
                        headText: "Milk Packet",
                        descriptText: "1 litr/ 80 Rs"
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
