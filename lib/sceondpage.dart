import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataList = [
      {
        "name": "이름 : 이다민",
        "job": "직책 : 팀장",
        "TMI": "개발이 참 어렵네요...",
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "name": "이름 : 황수연",
        "job": "직책 : 팀원",
        "TMI": "🐜 개미는 뚠뚠.. 오늘도 뚠뚠.. 열심히.. 일을 하네.. 뚠뚠 🐜",
        "imgUrl":
            "https://kr.xinhuanet.com/2016-09/08/135672109_14733053184031n.jpg",
      },
      {
        "name": "이름 : 김현정",
        "job": "직책 : 팀원",
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

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.backspace, color: Colors.black),
          onPressed: () {},
        ),
        elevation: 0.0,
        backgroundColor: Colors.yellow,
        title: Text(
          'Monkey Place',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (contextm, index) {
            String name = dataList[index]['name'];
            String job = dataList[index]['job'];
            String imgUrl = dataList[index]['imgUrl'];
            String TMI = dataList[index]['TMI'];

            return Padding(
              padding: const EdgeInsets.all(8.0),
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
                                  Icon(
                                    CupertinoIcons.heart,
                                    color: Colors.black54,
                                    size: 16,
                                  ),
                                  Text(
                                    '1',
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
            );
          }),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.backspace, color: Colors.black),
          onPressed: () {},
        ),
        elevation: 0.0,
        backgroundColor: Colors.yellow,
        title: Text(
          'Monkey Place',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            //fontWeight: FontWeight.bold,
          ),
        ),
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
