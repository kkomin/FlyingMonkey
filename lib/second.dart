import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkeyplace/third.dart';
import 'package:monkeyplace/thirdpage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dataList = [
      {
        "num": "0",
        "name": "이다민",
        "job": "팀장",
        "TMI": "개발이 참 어렵네요...",
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
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "num": "1",
        "name": "황수연",
        "job": "팀원",
        "TMI": "🐜 개미는 뚠뚠.. 오늘도 뚠뚠.. 열심히.. 일을 하네.. 뚠뚠 🐜",
        "major": "전자기계공학과",
        "key1": "1",
        "key2": "2",
        "key3": "3",
        "key4": "4",
        "key5": "5",
        "key6": "6",
        "intro": "수연님",
        "blog": "https://suyeonoeyus.tistory.com",
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "num": "2",
        "name": "김현정",
        "job": "팀원",
        "TMI": "개발은 처음이라…☞☜",
        "major": "학과",
        "key1": "1",
        "key2": "2",
        "key3": "3",
        "key4": "4",
        "key5": "5",
        "key6": "6",
        "intro": "",
        "blog": "https://dream-tree230703.tistory.com/",
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "num": "3",
        "name": "이름 : 양윤혁",
        "job": "직책 : 팀원",
        "TMI": "개발블로그 만들었어요",
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
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "num": "4",
        "name": "이름 : 남소진",
        "job": "직책 : 팀원",
        "TMI": "내성적입니다^^ 처음이지만 열심히하겠습니다.",
        "major": "학과",
        "key1": "1",
        "key2": "2",
        "key3": "3",
        "key4": "4",
        "key5": "5",
        "key6": "6",
        "intro": "소진님",
        "blog": "https://velog.io/@asd0299",
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "num": "5",
        "name": "이름 : 이호식",
        "job": "직책 : 팀원",
        "TMI": "웹캠 처음써봐요",
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
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
    ];
    int clickheart = 0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFFAE9D2),
        title: Text(
          "MonkeyPlace",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        toolbarHeight: 70,
      ),
      body: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            String name = dataList[index]['name'];
            String job = dataList[index]['job'];
            String imgUrl = dataList[index]['imgUrl'];
            String TMI = dataList[index]['TMI'];

            return Padding(
              padding: const EdgeInsets.all(0),
              child: ElevatedButton(
                onPressed: () {
                  print(name);
                  print(TMI);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Third2Page(data: dataList[index]),
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
