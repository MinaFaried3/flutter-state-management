import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/getx.dart';

class Counter1 extends StatelessWidget {
  Counter1({Key? key}) : super(key: key);
  // get counter => Get.find();
  final GetXCounter counter = Get.find();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: GetBuilder<GetXCounter>(
        init: counter,
        builder: (_) => Center(
          child: Text(
            '${counter.counter}',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
