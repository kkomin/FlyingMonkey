import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monkeyplace/scondpage.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: secondPage(),
    );
  }
}

class thirdPage extends StatelessWidget {
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
                  SizedBox(width: 20.0), // 이름 사이즈 박스
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
                        'MBTI : ENFP',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        '각오 한마디 : 아자아자 화이팅',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        '생년월일 : 2000. 04 . 18 .',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 20.0, bottom: 0.0), //여백 설정
                  width: 500, // 선의 너비
                  height: 2, // 선의 높이
                  color: Colors.grey // 선의 색상
                  ),
              SizedBox(height: 24.0),
              Text(
                '키워드 6가지',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                padding: EdgeInsets.all(8.0), // 키쿼드 박스와 전체 박스 간의 간격
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0), //상자의 둥글기 정도
                ),
                child: Wrap(
                  spacing: 12.0,
                  runSpacing: 12.0,
                  children: <Widget>[
                    keyWord('고양이'),
                    keyWord('엥뿌삐'),
                    keyWord('개발자'),
                    keyWord('비전공자'),
                    keyWord('여행'),
                    keyWord('음악'),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 20.0), //여백 설정
                  width: 500, // 선의 너비
                  height: 2, // 선의 높이
                  color: Colors.grey // 선의 색상
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
                    textAlign: TextAlign.center, // 가운데로 정렬
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 40.0), //여백 설정
                  width: 500, // 선의 너비
                  height: 2, // 선의 높이
                  color: Colors.grey // 선의 색상
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
                    textAlign: TextAlign.center, // 가운데로 정렬
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget keyWord(String text) {
    return Container(
      width: 111,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
