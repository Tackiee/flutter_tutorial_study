import 'package:flutter/material.dart';
import 'package:tutorial/counter.dart';

void main() {
  final controller = TextEditingController();

  final textField = TextField(
    controller: controller,
    decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Input Text.',
        hintText: 'Only English',
        errorText: 'This Text is not English!'),
  );

  showText() {
    debugPrint(controller.text);
  }

  final button = ElevatedButton(
    onPressed: showText,
    child: Text('press button'),
    style: ElevatedButton.styleFrom(primary: Colors.blue),
  );

  final img = Image.asset('images/sample.png');
  final col = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset('images/sample.png'),
      Image.network('https://flutter-image-network.web.app/inu.jpeg'),
      //Text('レモン'),
      //Text('りんご'),
      //Text('ブドウ'),
    ],
  );

  final con2 = Container(
    color: Colors.yellowAccent,
    width: 10,
    height: 10,
  );

  final con = Container(
    color: Colors.indigo,
    width: 700,
    height: 500,
    child: img,
    alignment: Alignment.topRight,
    padding: EdgeInsets.all(20),
  );

  final c = Counter(
    number: 888,
  );

  // final row = Row(
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   crossAxisAlignment: CrossAxisAlignment.center,
  //   children: [img, img, img],
  // );

  final app = MaterialApp(
    // 画面
    home: Scaffold(
      // 真ん中
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              child: textField,
            ),
            button,
          ],
        ),
      ),
    ),
  );
  runApp(app);
}
