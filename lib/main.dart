import 'package:flutter/material.dart';
import 'package:monkeyplace/secondpage.dart';
import 'package:monkeyplace/intro_page.dart';
import 'package:monkeyplace/thirdpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: [
            IntroPage(),
            SecondPage(),
            ThirdPage(
              data: {},
            ),
          ],
        ),
      ),
    );
  }
}
