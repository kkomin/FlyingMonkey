import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class thirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.backspace, color: Colors.white),
          onPressed: () {},
        ),
        elevation: 0.0,
        backgroundColor: Colors.yellow,
        title: Text(
          'Monkey Place',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 65,
                    backgroundImage: NetworkImage(
                        'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbcUAAW%2Fbtsm8QakA9A%2FL19epf2i7qxWg09ESMjTx0%2Fimg.jpg'),
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '황수연',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'MBTI: ENFP',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        '각오 한마디: 아자아자 화이팅',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        '팀에서 담당하는 것: 화려한 배경',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 0.0),
                width: 500,
                height: 2,
                color: Colors.grey,
              ),
              SizedBox(height: 24.0),
              Text(
                '키워드 6가지',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24.0),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildRoundedBox('ENFP', Colors.blue),
                    SizedBox(width: 10),
                    buildRoundedBox('MBTI', Colors.blue),
                    SizedBox(width: 10),
                    buildRoundedBox('MBTI', Colors.blue),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildRoundedBox('MBTI', Colors.blue),
                    SizedBox(width: 10),
                    buildRoundedBox('MBTI', Colors.blue),
                    SizedBox(width: 10),
                    buildRoundedBox('MBTI', Colors.blue),
                  ],
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                width: 500,
                height: 2,
                color: Colors.grey,
              ),
              Text(
                '자기소개',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    '자기소개',
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                width: 500,
                height: 2,
                color: Colors.grey,
              ),
              Text(
                '전공 / 자격증 / 어학 / 기타',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    '어쩌구 저쩌구',
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
