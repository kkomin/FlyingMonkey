// 첫번째 페이지
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class firstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text(
          'Monkey Place',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.brown[500]!, Colors.yellow[300]!],
        )),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  "https://i.esdrop.com/d/f/IiQGQFHH09/lyjGUfftW8.png",
                  width: 130,
                  height: 130,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Monkey Place에",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
            Text(
              "오신 것을 환영합니다.",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  '플라잉 원숭이',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              width: 350,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MEMBERS',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            "팀장 : 이다민",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "팀원 : 황수연, 김현정, 이호식, 양윤혁, 남소진",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              width: 350,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Icon(
                      Icons.play_circle,
                      size: 50,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MOTO',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            "원숭이처럼 재밌고 유쾌하게 프로젝트를        즐기면서, 자유롭고 창의적인 사고로              프로젝트를 만들어내자 !",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            softWrap: false,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
