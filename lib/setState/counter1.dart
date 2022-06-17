import 'package:flutter/material.dart';

class Counter1 extends StatelessWidget {
  final int count;
  const Counter1(this.count, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
          width: 150,
          height: 150,
          child: Center(
            child: Text(
              '$count',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
