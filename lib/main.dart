
import 'package:exam/screens/frist_screen/task_one.dart';
import 'package:exam/screens/second_screen/task_two.dart';
import 'package:exam/screens/third_screen/task_three.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    routes: {
      HomeOne.routeName: (_) => HomeOne(),
      HomeTwo.routeName: (_) => HomeTwo(),
      HomeThree.routeName: (_) => HomeThree(),
    },
    initialRoute: HomeTwo.routeName
  ));
}
