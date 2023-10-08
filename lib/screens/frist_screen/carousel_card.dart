import 'package:exam/utilites/app_assets.dart';
import 'package:exam/utilites/app_color.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  String title;
  String content;
  int time = 0;

  CarouselCard(
      {required this.title, required this.content, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColor.greentrans,
        child: Container(
          margin: EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Positive vibes",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text("Post your mode with positive vibes",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          ImageIcon(
                            AssetImage(AppAssets.play_ic),
                            color: Colors.green,
                          ),
                          Text("  $time mins")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Image(
                    image: AssetImage(AppAssets.person_ic),
                    height: 60,
                    width: 50,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
