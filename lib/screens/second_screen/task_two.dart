import 'package:exam/screens/second_screen/tabs/chart_tab/chart_tab.dart';
import 'package:exam/screens/second_screen/tabs/home_tab/home_two.dart';
import 'package:exam/screens/second_screen/tabs/navigator_tab/navigator_tab.dart';
import 'package:exam/screens/second_screen/tabs/user_tab/user_tab.dart';
import 'package:exam/utilites/app_assets.dart';
import 'package:flutter/material.dart';

class HomeTwo extends StatefulWidget {
  static const String routeName = "HomeTwo";

  @override
  State<HomeTwo> createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
  int currenttabindex = 0;
  List<Widget> tabstwo = [
    HomeTaskTwo(),
    NavigatorTab(),
    Chart(),
    UserTwo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: buildBottomNavigationBar(),
      body: tabstwo[currenttabindex],
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
            selectedItemColor: Colors.blue,
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
                    AppAssets.navigator_ic,
                  )),
                  label: "•"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    AppAssets.chart_ic,
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
