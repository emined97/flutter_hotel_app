import 'package:flutter/material.dart';
import 'package:kurulum_demo/class_hotel/class_hotel_detail.dart';
import 'package:kurulum_demo/class_hotel/class_hotel_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: const ClassHotel(),
    );
  }
}
