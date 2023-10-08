import 'package:exam/screens/frist_screen/tabs/app_tab/app_tab.dart';
import 'package:exam/screens/frist_screen/tabs/calender_tab/calender_tab.dart';
import 'package:exam/screens/frist_screen/tabs/home_tab/home_one.dart';
import 'package:exam/screens/frist_screen/tabs/user_tab/user_tab.dart';
import 'package:exam/utilites/app_assets.dart';
import 'package:flutter/material.dart';

class HomeOne extends StatefulWidget {
  static const String routeName = "HomeOne";

  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  int currenttabindex = 0;
  List<Widget> tabs = [
    Home(),
    App(),
    Calender(),
    User(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: buildBottomNavigationBar(),
      body: tabs[currenttabindex],
    );
  }

  Widget buildBottomNavigationBar() => Theme(
        data: ThemeData(canvasColor: Colors.white),
        child: BottomNavigationBar(
            currentIndex: currenttabindex,
            onTap: (index) {
              currenttabindex = index;
              setState(() {});
            },
            elevation: 10,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    AppAssets.homebar_ic,
                  )),
                  label: "•"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    AppAssets.appsbar_ic,
                  )),
                  label: "•"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    AppAssets.calenderbar_ic,
                  )),
                  label: "•"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    AppAssets.userbar_ic,
                  )),
                  label: "•"),
            ]),
      );
}
