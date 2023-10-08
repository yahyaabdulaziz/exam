import 'package:exam/screens/second_screen/tabbar_item.dart';
import 'package:exam/utilites/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeTaskTwo extends StatefulWidget {
  @override
  State<HomeTaskTwo> createState() => _HomeStateTwo();
}

class _HomeStateTwo extends State<HomeTaskTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 22, horizontal: 16),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.userpic),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello , yahya",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "Ready To Work ",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )
                  ],
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
                    size: 25,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            child: const Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.heart_broken_outlined,
                            size: 24,
                            color: Colors.blue,
                          ),
                          Text(
                            'Heart rate',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Center(
                        child: Text(
                          '81 BPM',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.menu_sharp,
                            size: 24,
                            color: Colors.blue,
                          ),
                          Text(
                            'To-do',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Center(
                        child: Text(
                          '32.5 %',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            size: 24,
                            color: Colors.blue,
                          ),
                          Text(
                            'Calo',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Center(
                        child: Text(
                          '1000 Cal',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 18),
            child: Text(
              "Workout Programs",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 4, // The number of tabs
              child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                    tabs: [
                      Tab(text: 'All Type'),
                      Tab(text: 'Full Body'),
                      Tab(text: 'Upper'),
                      Tab(text: 'Lower'),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    Center(
                        child: TabItem(
                            time: 30,
                            day: 7,
                            title: "dndnjdnsj",
                            subtilte: "nsdjkfjdfbsd")),
                    Center(
                        child: TabItem(
                            time: 23,
                            day: 5,
                            title: "iuuuuuuu",
                            subtilte: "scsdsdsds")),
                    Center(
                        child: TabItem(
                            time: 12,
                            day: 6,
                            title: ";lk;l;l;l",
                            subtilte: "fdgdfg")),
                    Center(
                        child: TabItem(
                            time: 25,
                            day: 9,
                            title: "jkjkjhkjhkfghsdc",
                            subtilte: "sdfeerg")),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
