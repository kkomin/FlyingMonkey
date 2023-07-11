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
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 244, 175),
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  "https://img.freepik.com/free-vector/cute-baby-monkey-hug-banana-cartoon-vector-icon-illustration-animal-nature-icon-concept-isolated_138676-5559.jpg?t=st=1689060764~exp=1689061364~hmac=e55d61a995d07d260a4b964d05c52232b3ef4e9ae5cc4e57c5ef7a3e3a3a7aa1",
                  width: 130,
                  height: 130,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              "Monkey Place에 오신 것을 환영합니다",
              style: TextStyle(
                fontSize: 21,
                color: Colors.yellow,
              ),
            )
          ],
        ));
  }
}
