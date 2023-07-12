import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkeyplace/third.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataList = [
      {
        "name": "이다민",
        "job": "팀장",
        "TMI": "개발이 참 어렵네요...",
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "name": "황수연",
        "job": "팀원",
        "TMI": "🐜 개미는 뚠뚠.. 오늘도 뚠뚠.. 열심히.. 일을 하네.. 뚠뚠 🐜",
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "name": "김현정",
        "job": "팀원",
        "TMI": "개발은 처음이라…☞☜",
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "name": "이름 : 양윤혁",
        "job": "직책 : 팀원",
        "TMI": "개발블로그 만들었어요",
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "name": "이름 : 남소진",
        "job": "직책 : 팀원",
        "TMI": "내성적입니다^^ 처음이지만 열심히하겠습니다.",
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "name": "이름 : 이호식",
        "job": "직책 : 팀원",
        "TMI": "웹캠 처음써봐요",
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
    ];

    // List<Person> personList = [
    //   Person(
    //     name: "이다민",
    //     job: "팀장",
    //     TMI: "개발이 참 어렵네요...",
    //     imgUrl:
    //         "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
    //   ),
    //   Person(
    //     name: "황수연",
    //     job: "팀원",
    //     TMI: "🐜 개미는 뚠뚠.. 오늘도 뚠뚠.. 열심히.. 일을 하네.. 뚠뚠 🐜",
    //     imgUrl:
    //         "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
    //   ),
    //   Person(
    //     name: "김현정",
    //     job: "팀원",
    //     TMI: "개발은 처음이라…☞☜",
    //     imgUrl:
    //         "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
    //   ),
    //   Person(
    //     name: "양윤혁",
    //     job: "팀원",
    //     TMI: "개발블로그 만들었어요",
    //     imgUrl:
    //         "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
    //   ),
    //   Person(
    //     name: "남소진",
    //     job: "팀원",
    //     TMI: "내성적입니다^^ 처음이지만 열심히하겠습니다.",
    //     imgUrl:
    //         "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
    //   ),
    //   Person(
    //     name: "이호식",
    //     job: "팀원",
    //     TMI: "웹캠 처음써봐요",
    //     imgUrl:
    //         "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
    //   ),
    //   // 추가적인 데이터 리스트 아이템들을 추가할 수 있습니다.
    // ];

    int clickheart = 0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 25,
          ),
          onPressed: () {
            DefaultTabController.of(context).animateTo(0);
          },
        ),
        elevation: 0.0,
        backgroundColor: Color(0xFFFAE9D2),
        title: Text(
          "MonkeyPlace",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        toolbarHeight: 70,
      ),
      body: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (contextm, index) {
            String name = dataList[index]['name'];
            String job = dataList[index]['job'];
            String imgUrl = dataList[index]['imgUrl'];
            String TMI = dataList[index]['TMI'];

            return Padding(
              padding: const EdgeInsets.all(0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      // 사진 투입
                      child: Image.network(
                        imgUrl,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            job,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            TMI,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                            children: [
                              Spacer(),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      child: Icon(
                                        CupertinoIcons.heart,
                                        color: Colors.black54,
                                        size: 16,
                                      ),
                                      onTap: () {
                                        clickheart++;
                                      },
                                    ),
                                    Text(
                                      //clickheart만큼의 숫자로 표기
                                      "1",
                                      style: TextStyle(color: Colors.black54),
                                    ),
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
              ),
            );
          }),
    );
  }
}
