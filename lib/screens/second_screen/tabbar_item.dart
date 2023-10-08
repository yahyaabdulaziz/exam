import 'package:exam/utilites/app_assets.dart';
import 'package:exam/utilites/app_color.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  int time;
  int day;
  String title;
  String subtilte;

  TabItem(
      {required this.time,
      required this.day,
      required this.title,
      required this.subtilte});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColor.barcolor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                      child: Text(
                    "$day days",
                    style: TextStyle(
                        color: Colors.black, backgroundColor: Colors.white),
                  )),
                  const Text(
                    " Morning Yoga",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("improve mental focus",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        const ImageIcon(
                          AssetImage(AppAssets.timer),
                          color: Colors.green,
                        ),
                        Text("  $time mins")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: Image(image: AssetImage(AppAssets.person_ic)))
          ],
        ));
  }
}
