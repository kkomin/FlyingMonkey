import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool like = false;

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
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start, // 위쪽에 붙게 만들기
            children: [
              SizedBox(width: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/myshiba.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽으로 붙게 만들기
                  children: [
                    Text(
                      '팀원 양윤혁🙊',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('ESTJ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    Text('개발블로그 만들었습니다.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        )),
                    Row(
                      children: [
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              like = !like;
                            });
                          },
                          child: Row(children: [
                            Icon(
                              like
                                  ? CupertinoIcons.hand_thumbsup_fill
                                  : CupertinoIcons.hand_thumbsup,
                              color: like ? Colors.brown : Colors.black,
                              size: 20,
                            )
                          ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
