//첫 번째 페이지
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstpage extends StatelessWidget {
  const firstpage(Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.yellow[300]!, Colors.yellow[900]!],
        ),
      ),
    );
  }
}
