import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/getx.dart';

class Counter3 extends StatelessWidget {
  Counter3({Key? key}) : super(key: key);
  final GetXCounter counter = Get.find();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Center(
        child: Obx(
          () => Center(
            child: Text(
              '${counter.counterObs.value}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
