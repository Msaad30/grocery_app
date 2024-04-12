import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/Screens/categories/category_dairy_screen.dart';
import 'package:grocery_app/Screens/categories/category_fruits_screen.dart';
import 'package:grocery_app/Screens/categories/category_meats_screen.dart';
import 'package:grocery_app/Screens/login_screen.dart';
import 'package:grocery_app/Screens/product_detail_screen.dart';
import 'package:grocery_app/ui_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../const_names.dart';
import 'cart_screen.dart';
import 'categories/category_vegitables_screen.dart';
import 'notification.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
    void initState() {
      super.initState();
      getUsename();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Grocery App",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "GolosText-SemiBold",
            ),
        ),
        leading: Icon(Icons.menu,size: 30,color: Colors.white,),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotifyScreen()));
            },
            icon : Icon(Icons.notification_add),
            color: Colors.white,
            iconSize: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              icon : Icon(Icons.logout),
              color: Colors.white,
              iconSize: 25,
            ),
          ),
        ],
        backgroundColor: greenColor
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// User information
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  foregroundImage: AssetImage("assets/images/blue_hair_avtar.png"),
                ),
                title: Text(
                  "Good Morning",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                subtitle: Text(
                  name.toString(),
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "nunito-bold"
                  ),
                ),
                trailing: SizedBox(
                  height: 80,
                  width: 80,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
                    },
                    child: SvgPicture.asset(
                      "assets/icons/shopping-basket-icon.svg"
                    ),
                  ),
                ),
              ),
            ),
            /// Search box
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 60,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: "GolosText-Bold"
                  ),
                  decoration: InputDecoration(
                      hintText: "Search category",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontFamily: "GolosText-SemiBold"
                      ),
                      prefixIcon: Icon(CupertinoIcons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: CupertinoColors.activeGreen,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: CupertinoColors.activeGreen,
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: CupertinoColors.activeGreen,
                          )
                      )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            /// Banner - 1
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-7.jpg"),
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-2.jpg"),
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-3.jpg"),
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-4.jpg"),
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-5.jpg"),
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-6.jpg"),
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-7.jpg"),
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-8.jpg"),
                  SizedBox(width: 10),
                ],
              ),
            ),
            /// Categories text
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UiHelper.customHeadingTextBold(text: "Categories 😊"),
                  UiHelper.customSeeAllText()
                ]
              ),
            ),
            /// Categories button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VagitablesCategoryScreen()));
                  },
                  child: UiHelper.categoriesIcons(text: 'vegetable', imgPath: 'assets/icons/vagitable-icon.svg',),
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FruitsCategoryScreen()));
                  },
                  child: UiHelper.categoriesIcons(text: 'fruits', imgPath: 'assets/icons/fruit-icon.svg'),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DairyCategoryScreen()));
                  },
                  child: UiHelper.categoriesIcons(text: 'dairy', imgPath: 'assets/icons/milk-icons.svg',),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MeatsCategoryScreen()));
                  },
                  child: UiHelper.categoriesIcons(text: 'meat', imgPath: 'assets/icons/meat-icon.svg'),
                ),
                SizedBox(width: 10,),
              ]
            ),
            /// Best selling text
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiHelper.customHeadingTextBold(text: "Best Selling 🔥"),
                    UiHelper.customSeeAllText()
                  ]
              ),
            ),
            SizedBox(height: 10,),
            /// Best selling cards
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      UiHelper.homePageCards(
                        (){
                          productScreenNavigator(
                            img: "$fruitsPath/mango-butter.png",
                            headText: 'Devgad Hapus Mango',
                            descriptText: '1Dozen, 250 Rs');
                        },
                        imgPath: "$fruitsPath/mango-butter.png",
                        headText: "Devgad Hapus Mango",
                        descriptText: "1Dozen, 250 Rs"
                      ),
                      UiHelper.homePageCards(
                        (){
                          productScreenNavigator(
                            img: "$vegetablesPath/beet.png",
                            headText: 'Red Beet',
                            descriptText: '1 item/ 15 Rs');
                        },
                        imgPath: "$vegetablesPath/beet.png",
                        headText: "Red Beet",
                        descriptText: "1 item/ 15 Rs"
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
                                img: "$dairyPath/milk_packet.png",
                                headText: 'Fresh Milk',
                                descriptText: '1liter, 80 Rs');
                          },
                          imgPath: "$dairyPath/milk_packet.png",
                          headText: "Fresh Milk",
                          descriptText: "1liter, 80 Rs"
                      ),
                      UiHelper.homePageCards(
                          (){
                            productScreenNavigator(
                                img: "$vegetablesPath/cabbage.png",
                                headText: 'Green cabbage',
                                descriptText: '1Kg, 25 Rs');
                          },
                          imgPath: "$vegetablesPath/cabbage.png",
                          headText: "Green cabbage",
                          descriptText: "1Kg, 25 Rs"
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
                                img: "$vegetablesPath/carrots_big.png",
                                headText: 'Carrotes',
                                descriptText: '1Kg, 120 Rs');
                          },
                          imgPath: "$vegetablesPath/carrots.png",
                          headText: "Carrotes",
                          descriptText: "1Kg, 120 Rs"
                      ),
                      UiHelper.homePageCards(
                          (){
                            productScreenNavigator(
                                img: "$vegetablesPath/lemons-product.png",
                                headText: 'lemons',
                                descriptText: '1Kg, 120 Rs');
                          },
                          imgPath: "$vegetablesPath/lemon.png",
                          headText: "lemons",
                          descriptText: "1Kg, 250Rs"
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
                                img: "$vegetablesPath/flower-product.png",
                                headText: 'Flower',
                                descriptText: '1Kg, 50Rs');
                          },
                          imgPath: "$vegetablesPath/fulawer.png",
                          headText: "Flower",
                          descriptText: "1Kg, 50Rs"
                      ),
                      UiHelper.homePageCards(
                          (){
                            productScreenNavigator(
                                img: "$vegetablesPath/coconuts-product.png",
                                headText: 'Coconut',
                                descriptText: '1 item, 25 Rs');
                          },
                          imgPath: "$vegetablesPath/coconut.png",
                          headText: "Coconut",
                          descriptText: "1 item, 25 Rs"
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            /// Banner - 2
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-4.jpg"),
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-5.jpg"),
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-6.jpg"),
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-7.jpg"),
                  SizedBox(width: 5),
                  UiHelper.bannerCards(imgPath:"$bannerPath/banner-8.jpg"),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 10,),
            /// Recommanded Text
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UiHelper.customHeadingTextBold(text: "Recammanded ♻"),
                  UiHelper.customSeeAllText()
                ]
              ),
            ),
            SizedBox(height: 10,),
            /// Recommanded card

            Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    UiHelper.homePageCards(
                        (){
                          productScreenNavigator(
                            img: "$fruitsPath/mango-butter.png",
                            headText: 'Devgad Hapus Mango',
                            descriptText: '1Dozen, 250 Rs');
                        },
                        imgPath: "$fruitsPath/mango-butter.png",
                        headText: "Devgad Hapus Mango",
                        descriptText: "1Dozen, 250 Rs"
                    ),
                    UiHelper.homePageCards(
                        (){
                          productScreenNavigator(
                              img: "$vegetablesPath/beet.png",
                              headText: 'Red Beet',
                              descriptText: '1 item/ 15 Rs');
                        },
                        imgPath: "$vegetablesPath/beet.png",
                        headText: "Red Beet",
                        descriptText: "1 item/ 15 Rs"
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
                              img: "$dairyPath/milk_packet.png",
                              headText: 'Fresh Milk',
                              descriptText: '1liter, 80 Rs');
                        },
                        imgPath: "$dairyPath/milk_packet.png",
                        headText: "Fresh Milk",
                        descriptText: "1liter, 80 Rs"
                    ),
                    UiHelper.homePageCards(
                            (){
                          productScreenNavigator(
                              img: "$vegetablesPath/cabbage.png",
                              headText: 'Green cabbage',
                              descriptText: '1Kg, 25 Rs');
                        },
                        imgPath: "$vegetablesPath/cabbage.png",
                        headText: "Green cabbage",
                        descriptText: "1Kg, 25 Rs"
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
                              img: "$vegetablesPath/carrots_big.png",
                              headText: 'Carrotes',
                              descriptText: '1Kg, 120 Rs');
                        },
                        imgPath: "$vegetablesPath/carrots.png",
                        headText: "Carrotes",
                        descriptText: "1Kg, 120 Rs"
                    ),
                    UiHelper.homePageCards(
                            (){
                          productScreenNavigator(
                              img: "$vegetablesPath/lemons-product.png",
                              headText: 'lemons',
                              descriptText: '1Kg, 250Rs');
                        },
                      imgPath: "$vegetablesPath/lemon.png",
                      headText: "lemons",
                      descriptText: "1Kg, 250Rs"
                    )
                  ],
                ),
              ),
            ]
            ),
          ]
        ),
      )
    );
  }

  String? img;
  String? headText;
  String? descriptText;

  void productScreenNavigator({required String img, required String headText, required String descriptText }){
    log(img);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>
        ProductDetailScreen(
          img: img,
          headText: headText,
          descriptText: descriptText,
        )
      )
    );
  }

  String? name;
  Future getUsename() async{
    SharedPreferences pref =  await SharedPreferences.getInstance();
    setState(() {
      this.name = pref.getString("name");
    });
  }
}
