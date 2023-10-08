import 'package:exam/screens/frist_screen/carousel_card.dart';
import 'package:exam/utilites/app_assets.dart';
import 'package:exam/utilites/app_color.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 18),
              child: Row(
                children: [
                  Image(image: AssetImage(AppAssets.flower_ic)),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text(
                      "Moody",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Spacer(),
                  badges.Badge(
                    badgeContent: Text(
                      '•',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.red),
                    ),
                    child: Icon(
                      Icons.alarm,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Text("Hello,",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 22)),
                  Text(
                    "Yahya Abdulaziz",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
            ),
            Text(
              "How are you feeling today ? ",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Colors.grey),
                          child: Image(image: AssetImage(AppAssets.love_ic))),
                      Text("Love"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Colors.grey),
                          child: Image(image: AssetImage(AppAssets.cool_ic))),
                      Text("Cool"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Colors.grey),
                          child: Image(image: AssetImage(AppAssets.happy_ic))),
                      Text("Happy"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Colors.grey),
                          child: Image(image: AssetImage(AppAssets.sad_ic))),
                      Text("Sad"),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 14, bottom: 10),
              child: Row(
                children: [
                  Text("Feature",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  Spacer(),
                  Text("See more >",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green))
                ],
              ),
            ),
            CarouselSlider(
              items: [
                CarouselCard(
                    title: "Positive vibes",
                    content: "Post your mode with positive vibes",
                    time: 10),
                CarouselCard(
                    title: "Negative vibes",
                    content: "Post your mode with Negative vibes",
                    time: 10),
                CarouselCard(
                    title: "Real vibes",
                    content: "Post your mode with real vibes",
                    time: 10),
              ],
              options: CarouselOptions(
                height: 190,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 14, bottom: 10),
              child: Row(
                children: [
                  Text("Feature",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  Spacer(),
                  Text("See more >",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green))
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColor.relaxcolor)),
                      onPressed: () {},
                      icon: Image.asset(AppAssets.relaxation_ic),
                      label: Text("Relatation")),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: TextButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColor.meditcolor)),
                      onPressed: () {},
                      icon: Image.asset(AppAssets.meditation_ic),
                      label: Text("Meditation")),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColor.beathcolor)),
                      onPressed: () {},
                      icon: Image.asset(AppAssets.beathing_ic),
                      label: Text("Beathing")),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: TextButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColor.yogacolor)),
                      onPressed: () {},
                      icon: Image.asset(AppAssets.yoga_ic),
                      label: Text("Yoga")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
