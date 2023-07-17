// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:layout/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "แอพแนะนำเกี่ยวกับช่องยูทูป",
      home: HomePage(),
    );
  }
}
