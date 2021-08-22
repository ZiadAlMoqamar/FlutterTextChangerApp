import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String txt;
  MyText({required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        txt,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
