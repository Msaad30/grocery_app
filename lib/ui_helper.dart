import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'const_names.dart';

class UiHelper{
  static circleAvetarFixed([double radius = 60]){
    return CircleAvatar(
      radius: radius,
      foregroundImage: AssetImage(appLogo),
      backgroundColor: Colors.white,
    );
  }

  static customTextfields({required Widget icon, required String lable, required String hintText, required TextInputType kaybordTextInputType, TextEditingController? controller}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: 60,
        child: TextField(
          controller: controller,
          keyboardType: kaybordTextInputType,
          style: TextStyle(
              fontSize: 17,
              fontFamily: "GolosText-SemiBold"
          ),
          decoration: InputDecoration(
              label: Text(
                lable,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "GolosText-SemiBold",
                  color: Colors.black,
                ),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: 15,
                  fontFamily: "GolosText-SemiBold"
              ),
              prefixIcon: icon,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: greenColor,
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: greenColor,
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: greenColor,
                  )
              )
          ),
        ),
      ),
    );
  }

  static customStartingTextBold({required String text}){
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: 'nunito-bold',
        fontWeight: FontWeight.bold,
        fontSize: 30
      ),
    );
  }

  static customStartingTextRegular({required String text}){
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: 'nunito-bold',
        fontWeight: FontWeight.w400,
        fontSize: 15,
      ),
    );
  }

  static customButton(VoidCallback callback, {required double width, required double height, required String text, required double fontsize}){
    return ElevatedButton(
      onPressed: (){
        callback();
      },
      style : ElevatedButton.styleFrom(
        minimumSize: Size(width,height),
        backgroundColor: greenColor,
        // CupertinoColors.activeGreen,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          // fontFamily: 'nunito-bold',
          fontSize: fontsize,
        ),
      )
    );
  }

  static containerCube({ required double width, required double height, required Color color}){
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }

  static bannerCards({required String imgPath}){
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 180,
        width: 350,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  static customHeadingTextBold({required String text}){
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontFamily: 'GolosText-ExtraBold',
          fontWeight: FontWeight.bold,
          fontSize: 22
      ),
    );
  }

  static customSeeAllText(){
    return Text(
        "See all",
        style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 17,
            fontFamily: "GolosText-SemiBold"
        )
    );
  }

  static categoriesIcons({required String text, required String imgPath}) {
    return Container(
      height: 140,
      width: 85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: cardColor,
            child: SvgPicture.asset(
              imgPath,
              height: 40, // Adjust height as needed
              width: 40, // Adjust width as needed
            ),
          ),
          SizedBox(height: 10,),
          Text(text, style: TextStyle(fontSize: 15,
              fontFamily: 'GolosText-Bold'),
          ),
        ],
      ),
    );
  }

  static homePageCards(VoidCallback callback, {required String imgPath, required String headText, required String descriptText}){
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: 230,
          width: 166,
          child: InkWell(
            onTap: (){
              callback();
            },
            child: Card(
              color: cardColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 150,
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 140,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imgPath), // images
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                headText,   //productHead
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "GolosText-Bold"
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            Text(
                              descriptText, // description
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "GolosText-ExtraBold",
                                color: Colors.pink,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 20,
                        width: 150,
                        // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("⭐⭐⭐⭐"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            radius: 16,
            backgroundColor: greenColor,
            child: Icon(Icons.add, color: Colors.white,),
          ),
        )
      ]
    );
  }

  static productDescriptCards({required String iconPath, required String title, required String subtitle}){
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        height: 80,
        width: 180,
        child: Card(
          elevation: 0.5,
          child: Row(
            children: [
              Container(
                height: 80,
                width: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    iconPath,
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: "GolosText-Bold"
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            subtitle,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
  static customBackButton(VoidCallback firstCallback){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: (){
                  firstCallback();
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
    );
  }
}