import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkeyplace/intro_page.dart';
import 'package:monkeyplace/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  bool like = false; // 좋아요 여부
  int likenum = 1;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataList = [
      {
        "name": "🙊이다민",
        "position": "직책 : 팀장",
        "TMI": "개발이 참 어렵네요..",
        "img":
            "https://velog.velcdn.com/images/kkominl/profile/5560f494-eb6e-47f8-bfc7-f006495e9253/image.jpg",
        "major": "빅데이터학과",
        "key1": "ESTJ",
        "key2": "UNITY",
        "key3": "노래방",
        "key4": "강아지",
        "key5": "RIOT",
        "key6": "맛집",
        "intro":
            "안녕하세요😊 능력있는 개발자가 되는 것을 꿈꾸는 15조 팀장입니다. 여러 다양한 언어를 접해봤지만 flutter은 처음이라 아직 미숙하지만 열심히 공부해서 익숙하게 사용할 수 있도록 노력해보겠습니다!",
        "blog": "https://blog.naver.com/kkomin_0_0",
      },
      {
        "name": "🙈황수연",
        "position": "직책 : 팀원",
        "TMI": "🐜개미는 뚠뚠.. 오늘도 뚠뚠.. 열심히.. 일을 하네.. 뚠뚠 🐜",
        "img":
            "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbEDSzQ%2FbtsnocEXeHa%2FqdyhCdfbkimQSRqr7gbWQk%2Fimg.jpg",
        "major": "전자공학과 / 전자소프트웨어공학",
        "key1": "ENFP",
        "key2": "홈프로텍터",
        "key3": "영화",
        "key4": "고양이",
        "key5": "노래감상",
        "key6": "전시회",
        "intro":
            "안녕하세요 저는 홈프로텍터 황수연입니다. 이것저것 만들어낼 수 있는 개발자가 되고싶었습니다. 전공자들에 비해 늦게 시작했지만 그에 준하도록 열심히 해보겠습니다!! :) ",
        "blog": "https://suyeonoeyus.tistory.com",
      },
      {
        "name": "🐵이호식",
        "position": "직책 : 팀원",
        "TMI": "웹캠 처음써봐요",
        "img":
            "https://velog.velcdn.com/images/ghj6068/post/6be5d50a-00ae-40bb-b429-cf6088217967/image.jpg",
        "major": "컴퓨터공학과",
        "key1": "ENFP",
        "key2": "컴퓨터게임",
        "key3": "게임",
        "key4": "고양이",
        "key5": "농구",
        "key6": "운전",
        "intro":
            "안녕하심까!! 이것저것 해보다가 결국 전공으로 돌아오게된 발표자입니다. flutter는 낯설지만 생각보다 재미있다고 느끼고 있습니다 :)",
        "blog": "https://velog.io/@ghj6068",
      },
      {
        "name": "🙉김현정",
        "position": "직책 : 팀원",
        "TMI": "개발은 처음이라…☞☜",
        "img": "https://i.esdrop.com/d/f/rCUNZQuuQy/VO4IyT3ilY.jpg",
        "major": "사회복지학과",
        "key1": "ESFP",
        "key2": "독서",
        "key3": "운동",
        "key4": "요리",
        "key5": "운전",
        "key6": "맛집탐방",
        "intro":
            "안녕하세요 이번 생, 개발은 처음인 사회복지전공 내배캠 스파르타코딩 15조 팀원입니다. 30대에  새로운 분야로의 도전이 쉽지는 않네요. 그래도 함께 공부하는 팀원들이 있기에 하루하루 성장해간다는 마인드로 열심히 하겠습니다!!   ",
        "blog": "https://dream-tree230703.tistory.com/",
      },
      {
        "name": "🐒양윤혁",
        "position": "직책 : 팀원",
        "TMI": "개발블로그 만들었어요",
        "img":
            "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FdTv0pk%2FbtsnruqoIRY%2FnnQ39rKvBrQgxyp4FALKG1%2Fimg.jpg",
        "major": "스마트소프트웨어학과",
        "key1": "ESTJ",
        "key2": "여행",
        "key3": "시바견",
        "key4": "골프",
        "key5": "맛집탐지기",
        "key6": "산책머신",
        "intro":
            "안녕하세요 개발자를 꿈꾸는 15조 양윤혁입니다. 영업직을 하다 개발자의 꿈이 생겨 다시 넘어오게 되었습니다. 아직은 많이 부족하지만 능력있는 개발자로 거듭나겠습니다 도움주시면 감사하겠습니다!",
        "blog": "https://yangdriod.tistory.com/",
      },
      {
        "name": "🙈남소진",
        "position": "직책 : 팀원",
        "TMI": "내성적입니다^^ 처음이지만 열심히하겠습니다.",
        "img": "https://i.esdrop.com/d/f/IiQGQFHH09/jRpNj1TGo8.jpg",
        "major": "호텔경영학과",
        "key1": "INFP",
        "key2": "요리",
        "key3": "뜨개질",
        "key4": "강아지",
        "key5": "드라마시청",
        "key6": "집순이",
        "intro": "소진님",
        "blog": "https://velog.io/@asd0299",
        "intro":
            "안녕하세요. 호텔경영학과를 졸업해 호텔리어로 근무 후 이것저것 일하다가 가족의 권유로 개발자가 되기 위해 내배캠 스파르타에 들어오게 되었습니다. 서비스직만 하다가 공부하려니 너무 어렵네요… 열심히 배워나가서 좋은 개발자가 되겠습니다!"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF9E932),
        toolbarHeight: 50,
        elevation: 0.5,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 25,
          ),
          onPressed: () {
            // 클릭 이동 구현
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => IntroPage()));
          },
        ),
        title: Row(
          // (중간) //
          children: [
            Text(
              'Monkey Place',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
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
          //
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ThirdPage(data: dataList[index])));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      img,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
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
