import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(Object context) {
    final List<String> images = [
      "https://cdn2.thecatapi.com/images/6bt.jpg",
      "https://cdn2.thecatapi.com/images/ahr.jpg",
      "https://cdn2.thecatapi.com/images/arj.jpg",
      "https://cdn2.thecatapi.com/images/brt.jpg",
      "https://cdn2.thecatapi.com/images/cml.jpg",
      "https://cdn2.thecatapi.com/images/e35.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0.5,
        title: Row(
          // (중간) //
          children: [
            Text(
              'Monkey Place',
              style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
        actions: [
          //(우측 끝)
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search, color: Colors.brown),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.face, color: Colors.brown),
          )
        ],
      ),
      body: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/myshiba.jpg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          //이미지
          Column(
            children: [
              // 글씨
              Row(
                children: [
                  // 빈칸 하트 아이콘
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//세 번째 페이지
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text(
          "MonkeyPlace",
          style: TextStyle(fontSize: 25),
        ),
        toolbarHeight: 70,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ClipOval(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      // 여기에 동그라미 모양의 사진 위젯을 추가하세요
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '이다민',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '안녕하세요. 저는 이런 사람입니다.:)',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
