import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkeyplace/first.dart';
import 'package:monkeyplace/second.dart';
import 'package:monkeyplace/third.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            TabBarView(
              children: [
                FirstPage(),
                SecondPage(),
                ThirdPage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      color: DefaultTabController.of(context).index == 1
          ? Colors.blue[300]
          : Colors.grey[400],
      selectedColor: DefaultTabController.of(context).index == 1
          ? Colors.white
          : Colors.blue,
      indicatorSize: 8,
    );
  }
}
