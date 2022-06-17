import 'package:get/get.dart';

class GetXCounter extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }

  RxInt counterObs = 3.obs;

  void incrementObs() {
    counterObs.value++;
  }
}
