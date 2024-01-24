import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  // number
  final int number;
  const Counter({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // sample image
    final smpl = Image.asset('images/sample.png');

    // num text
    final text = Text(
      '$number',
      style: const TextStyle(
        color: Colors.yellow,
        fontSize: 60,
      ),
    );

    // arrange horizontally
    final row = Row(children: [smpl, text]);

    // decide size and color
    final con = Container(
      color: Colors.black87,
      child: row,
    );

    // show widget
    return con;
  }
}
