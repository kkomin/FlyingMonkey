import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool like = false; // 좋아요 여부

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataList = [
      {
        "name": "이름 : 🙊이다민",
        "position": "직책 : 팀장",
        "TMI": "개발이 참 어렵네요..",
        "img": "assets/myshiba.jpg",
      },
      {
        "name": "이름 : 🙈황수연",
        "position": "직책 : 팀원",
        "TMI": "🐜개미는 뚠뚠.. 오늘도 뚠뚠.. 열심히.. 일을 하네.. 뚠뚠 🐜",
        "img": "assets/myshiba.jpg",
      },
      {
        "name": "이름 : 🐵이호식",
        "position": "직책 : 팀원",
        "TMI": "웹캠 처음써봐요",
        "img": "assets/myshiba.jpg",
      },
      {
        "name": "이름 : 🙉김현정",
        "position": "직책 : 팀원",
        "TMI": "개발은 처음이라…☞☜",
        "img": "assets/myshiba.jpg",
      },
      {
        "name": "이름 : 🐒양윤혁",
        "position": "직책 : 팀원",
        "TMI": "개발블로그 만들었어요",
        "img": "assets/myshiba.jpg",
      },
      {
        "name": "이름 : 🙈남소진",
        "position": "직책 : 팀원",
        "TMI": "내성적입니다^^ 처음이지만 열심히하겠습니다.",
        "img": "assets/myshiba.jpg",
      },
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
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
        actions: [
          //(우측 끝)
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.face, color: Colors.black),
          )
        ],
      ),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          String name = dataList[index]['name'];
          String position = dataList[index]['position'];
          String TMI = dataList[index]['TMI'];
          String img = dataList[index]['img'];
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  img,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      (Text(
                        name,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 5,
                      ),
                      (Text(
                        position,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                      SizedBox(height: 5),
                      (Text(
                        TMI,
                        maxLines: 2,
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      )),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),

      /*
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          String name = dataList[index]['name'];
          String position = dataList[index]['position'];
          String tmi = dataList[index]['tmi'];
          String photo = dataList[index]['photo'];
          return Row();
        },
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start, // 위쪽에 붙게 만들기
            children: [
              SizedBox(width: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "photo",
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
                    SizedBox(width: 12),
                    Text('ESTJ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    SizedBox(width: 12),
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
                          child: Row(
                            children: [
                              Icon(
                                like
                                    ? CupertinoIcons.hand_thumbsup_fill
                                    : CupertinoIcons.hand_thumbsup,
                                color: like ? Colors.brown : Colors.black,
                                size: 20,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),*/
    );
  }
}
