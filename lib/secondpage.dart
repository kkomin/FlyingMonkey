import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkeyplace/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool like = false; // 좋아요 여부
  int likenum = 1;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataList = [
      {
        "name": "이름 : 🙊이다민",
        "position": "직책 : 팀장",
        "TMI": "개발이 참 어렵네요..",
        "img": "assets/myshiba.jpg",
        "major": "빅데이터학과",
        "key1": "1",
        "key2": "2",
        "key3": "3",
        "key4": "4",
        "key5": "5",
        "key6": "6",
        "intro":
            "안녕하세요😊 능력있는 개발자가 되는 것을 꿈꾸는 15조 팀장입니다. 여러 다양한 언어를 접해봤지만 flutter은 처음이라 아직 미숙하지만 열심히 공부해서 익숙하게 사용할 수 있도록 노력해보겠습니다!",
        "blog": "https://blog.naver.com/kkomin_0_0",
      },
      {
        "name": "이름 : 🙈황수연",
        "position": "직책 : 팀원",
        "TMI": "🐜개미는 뚠뚠.. 오늘도 뚠뚠.. 열심히.. 일을 하네.. 뚠뚠 🐜",
        "img": "assets/myshiba.jpg",
        "major": "전자기계공학과",
        "key1": "1",
        "key2": "2",
        "key3": "3",
        "key4": "4",
        "key5": "5",
        "key6": "6",
        "intro": "수연님",
        "blog": "https://suyeonoeyus.tistory.com",
      },
      {
        "name": "이름 : 🐵이호식",
        "position": "직책 : 팀원",
        "TMI": "웹캠 처음써봐요",
        "img": "assets/myshiba.jpg",
        "major": "컴퓨터공학과",
        "key1": "1",
        "key2": "2",
        "key3": "3",
        "key4": "4",
        "key5": "5",
        "key6": "6",
        "intro":
            "안녕하심까!! 이것저것 해보다가 결국 전공으로 돌아오게된 발표자입니다. flutter는 낯설지만 생각보다 재미있다고 느끼고 있습니다 :)",
        "blog": "https://velog.io/@ghj6068",
      },
      {
        "name": "이름 : 🙉김현정",
        "position": "직책 : 팀원",
        "TMI": "개발은 처음이라…☞☜",
        "img": "assets/myshiba.jpg",
        "major": "학과",
        "key1": "1",
        "key2": "2",
        "key3": "3",
        "key4": "4",
        "key5": "5",
        "key6": "6",
        "intro": "",
        "blog": "https://dream-tree230703.tistory.com/",
      },
      {
        "name": "이름 : 🐒양윤혁",
        "position": "직책 : 팀원",
        "TMI": "개발블로그 만들었어요",
        "img": "assets/myshiba.jpg",
        "major": "학과",
        "key1": "1",
        "key2": "2",
        "key3": "3",
        "key4": "4",
        "key5": "5",
        "key6": "6",
        "intro":
            "안녕하세요 개발자를 꿈꾸는 15조 양윤혁입니다. 영업직을 하다 개발자의 꿈이 생겨 다시 넘어오게 되었습니다. 아직은 많이 부족하지만 능력있는 개발자로 거듭나겠습니다 도움주시면 감사하겠습니다!",
        "blog": "https://yangdriod.tistory.com/",
      },
      {
        "name": "이름 : 🙈남소진",
        "position": "직책 : 팀원",
        "TMI": "내성적입니다^^ 처음이지만 열심히하겠습니다.",
        "img": "assets/myshiba.jpg",
        "major": "학과",
        "key1": "1",
        "key2": "2",
        "key3": "3",
        "key4": "4",
        "key5": "5",
        "key6": "6",
        "intro": "소진님",
        "blog": "https://velog.io/@asd0299",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFF9E932),
        elevation: 0.5,
        leading: Icon(CupertinoIcons.arrow_2_circlepath),
        title: Row(
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
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(data: dataList[index]),
                  ),
                );
              },
              child: Row(
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
                  // 공백 추가
                  SizedBox(width: 12),
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
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}
