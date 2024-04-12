import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const_names.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  static int counter = 0;

  var Items = [
    {
      "leading": "$vegetablesPath/lemon.png",
      "title": "Lemon",
      "subtitle": "1Kg, 250Rs",
    },
    {
      "leading": "$vegetablesPath/cabbage.png",
      "title": "Cabbage",
      "subtitle": "1Kg, 25 Rs",
    },
    {
      "leading": "$dairyPath/milk_packet.png",
      "title": "milk packet",
      "subtitle": "1liter, 80 Rs",
    },
    {
      "leading": "$fruitsPath/mango-butter.png",
      "title": "Devgad hapus mango",
      "subtitle": "1Dozen, 250 Rs",
    },
    {
      "leading": "$vegetablesPath/carrots.png",
      "title": "Carrots",
      "subtitle": "1Kg, 120 Rs",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Basket",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "GolosText-SemiBold",
          ),
        ),
      ),
      body:ListView.builder(
          itemCount: Items.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: Container(
                height: 100,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Items[index]["leading"].toString()),
                    fit: BoxFit.cover
                  )
                ),
              ),
              title: Text(
                Items[index]["title"].toString(),
                style: TextStyle(
                  fontFamily: "GolosText-Bold",
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                Items[index]["subtitle"].toString(),
                style: TextStyle(
                fontSize: 15,
                color: Colors.red
              ),
              ),
              trailing: Container(
                height: 30,
                width: 110,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey,
                      child: IconButton(onPressed: (){
                        setState(() {
                          counter--;
                        });
                      }, icon: Icon(Icons.remove, color: Colors.white, size: 18,)),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      counter.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'GolosText-Bold',
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.green,
                      child: IconButton(onPressed: (){
                        setState(() {
                          counter++;
                        });
                      }, icon: Icon(Icons.add, color: Colors.white, size: 18,)),
                    ),
                  ],
                ),
              ),
            );
          }
      )
    );
  }
}
