//세 번째 페이지
import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:monkeyplace/secondpage.dart';
import 'package:url_launcher/url_launcher.dart';

Widget buildRoundedBox(String text, Color color) {
  return Container(
    width: 100,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color,
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    ),
  );
}

class Third2Page extends StatelessWidget {
  const Third2Page({super.key, required List<Map<String, dynamic>> data});

  @override
  Widget build(BuildContext context) {
    // url로 이동
    void launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        print('Could not launch $url');
      }
    }

    Widget buildHyperlinkText(String text, String url) {
      //하이퍼링크 클릭시 launurl 함수 실행
      return TextButton(
        onPressed: () async {
          launchURL("https://blog.naver.com/kkomin_0_0");
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            decoration: TextDecoration.underline,
            color: Colors.blue,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 25,
          ),
          onPressed: () {
            // 클릭 이동 구현
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
        ),
        backgroundColor: Color(0xFFFAE9D2),
        title: Text(
          "MonkeyPlace",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        toolbarHeight: 70,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              children: [
                Align(
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
                    ),
                  ),
                ),
                SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '이다민',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '빅데이터학과 / 컴퓨터공학과',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '개발이 참 어렵네요...',
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        maxLines: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Row(
              children: [
                Text(
                  "키워드 소개",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),
          // MBTI, 성격, 취미 등
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildRoundedBox('ESTJ', Colors.pink[200]!),
                SizedBox(width: 10),
                buildRoundedBox('강아지', Colors.purple[200]!),
                SizedBox(width: 10),
                buildRoundedBox('프로그래밍', Colors.blue[200]!),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildRoundedBox('강아지', Colors.green[200]!),
                SizedBox(width: 10),
                buildRoundedBox('VALORANT', Colors.orange[200]!),
                SizedBox(width: 10),
                buildRoundedBox('오므라이스', Colors.yellow[200]!),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            thickness: 2,
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "자기소개",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("안녕하세요. 개발자를 꿈꾸고 있는 이다민입니다:) "),
                    SizedBox(
                      height: 70,
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 2,
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "블로그",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text("•    "),
                        buildHyperlinkText("https://blog.naver.com/kkomin_0_0",
                            "https://blog.naver.com/kkomin_0_0"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '•    ',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    )
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
