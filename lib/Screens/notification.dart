import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/const_names.dart';

class NotifyScreen extends StatelessWidget {
  NotifyScreen({super.key});

  var notifications = [
    {
      "leading": "$bannerPath/banner-1.jpg",
      "title": "New Product Arrived!",
      "subtitle": "Check out our latest arrivals in the dairy section.",
      "trailing": "1d ago"
    },
    {
      "leading": "$bannerPath/banner-2.jpg",
      "title": "Special Discount!",
      "subtitle": "Get 20% off on selected vegetables today only!",
      "trailing": "2d ago"
    },
    {
      "leading": "$bannerPath/banner-3.jpg",
      "title": "Flash Sale Alert!",
      "subtitle": "Hurry! Limited time offer on meat products. Grab them before they're gone!",
      "trailing": "3d ago"
    },
    {
      "leading": "$bannerPath/banner-4.jpg",
      "title": "Weekly Specials",
      "subtitle": "Discover this week's special discounts on fruits.",
      "trailing": "4d ago"
    },
    {
      "leading": "$bannerPath/banner-5.jpg",
      "title": "New Recipe Added!",
      "subtitle": "Learn how to make delicious smoothies with our fresh fruits.",
      "trailing": "5d ago"
    },
    {
      "leading": "$bannerPath/banner-6.jpg",
      "title": "Your Feedback Matters!",
      "subtitle": "We'd love to hear from you! Share your thoughts about our service.",
      "trailing": "6d ago"
    },
    {
      "leading": "$bannerPath/banner-7.jpg",
      "title": "Holiday Sale!",
      "subtitle": "Celebrate the holiday season with our special discounts on dairy products.",
      "trailing": "1w ago"
    },
    {
      "leading": "$bannerPath/banner-8.jpg",
      "title": "Limited Time Offer!",
      "subtitle": "Buy 1 Get 1 Free on selected grocery items.",
      "trailing": "1w ago"
    },
    {
      "leading": "$bannerPath/banner-2.jpg",
      "title": "Stay Healthy!",
      "subtitle": "Explore our wide range of organic fruits and vegetables for a healthier lifestyle.",
      "trailing": "2w ago"
    },
    {
      "leading": "$bannerPath/banner-1.jpg",
      "title": "Seasonal Delights!",
      "subtitle": "Enjoy the flavors of the season with our fresh produce.",
      "trailing": "2w ago"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          "Notification's",
          style: TextStyle(
            fontFamily: "GolosText-SemiBold",
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: IconButton(onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios)),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage(notifications[index]["leading"].toString()),
            ),
            // Text(),
            title: Text(
                notifications[index]["title"].toString(),
                style: TextStyle(
                  fontFamily: "GolosText-Bold",
                  fontSize: 15,
                ),
            ),
            subtitle: Text(notifications[index]["subtitle"].toString()),
            trailing: Text(
              notifications[index]["trailing"].toString(),
              style: TextStyle(
                fontFamily: "GolosText-Bold",
                fontSize: 13,
                color: CupertinoColors.activeGreen,
              ),
            ),
          );
        }
      )
    );
  }
}
