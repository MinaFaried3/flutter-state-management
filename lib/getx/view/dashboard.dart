import 'package:flutter/material.dart';

import 'counter1.dart';
import 'counter2.dart';
import 'counter3.dart';

class DashBoardGetX extends StatelessWidget {
  const DashBoardGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        child: SizedBox(
          width: 400,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 60,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Counter1()),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(child: Counter2()),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(child: Counter3()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
