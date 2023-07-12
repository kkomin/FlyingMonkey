import 'package:flutter/material.dart';
import 'package:monkeyplace/second.dart';

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
  final Map<String, dynamic> data;
  //const Third2Page({required this.dataList, Key? key}) : super(key: key);
  const Third2Page({Key? key, required this.data}) : super(key: key);

  Widget build(BuildContext context) {
    String name = data['name'];
    String imgUrl = data['imgUrl'];
    String tmi = data['TMI'];
    String major = data['major'];
    String intro = data['intro'];
    String key1 = data['key1'];
    String key2 = data['key2'];
    String key3 = data['key3'];
    String key4 = data['key4'];
    String key5 = data['key5'];
    String key6 = data['key6'];

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
                            fit: BoxFit.cover, image: NetworkImage(imgUrl)),
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
                        name,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        major,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        tmi,
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
                    Text(intro),
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