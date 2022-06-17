import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/getx.dart';

class Counter2 extends StatelessWidget {
  const Counter2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Center(
        child: GetX<GetXCounter>(
          builder: (counterBuilder) => Center(
            child: Text(
              '${counterBuilder.counterObs.value}',
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
