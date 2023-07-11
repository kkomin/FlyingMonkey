import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkeyplace/secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    );
  }
}

// 첫 번째 페이지

// 두 번째 페이지

