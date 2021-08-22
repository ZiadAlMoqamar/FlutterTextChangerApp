import 'package:flutter/material.dart';
import './MyButton.dart';
import 'MyText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Changer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Text Changer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String mainText = "CHANGE ME!";
  var _txtController = TextEditingController();

  void _changeText(String txt) {
    setState(() {
      print("changed");
      mainText = txt;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyText(
              txt: mainText,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TextField(
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "Enter New Text", border: OutlineInputBorder()),
                controller: _txtController,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MyButton(
              handler: () => _changeText(_txtController.text),
              buttonTxt: "Change Text",
            ),
          ],
        ),
      ),
    );
  }
}
