import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback handler;
  final String buttonTxt;
  MyButton({required this.handler, required this.buttonTxt});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: handler,
        child: Text(
          buttonTxt,
          style: TextStyle(fontSize: 15),
        ));
  }
}
