import 'package:flutter/material.dart';

void main() {
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

  final row = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [img, img, img],
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: row,
      ),
    ),
  );
  runApp(a);
}
