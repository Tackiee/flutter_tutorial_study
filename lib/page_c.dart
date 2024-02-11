import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      title: const Text('画面C'),
    );
    return Scaffold(
      appBar: appBar,
    );
  }
}
