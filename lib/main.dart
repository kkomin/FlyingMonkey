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
      home: ThirdPage(),
    );
  }
}

// 첫 번째 페이지

// 두 번째 페이지
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(Object context) {
    return Scaffold();
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
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  DefaultTabController.of(context).animateTo(0);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.grey[700],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ClipOval(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://kkomin.github.io/dog.jpg")),
                      ),
                      // 여기에 동그라미 모양의 사진 위젯을 추가하세요
                    ),
                  ),
                ),
              ),
              SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      child: Text(
                        '이다민',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Align(
                      child: Text(
                        '안녕하세요. 저는 이런 사람입니다.:)',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16),
                        maxLines: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
