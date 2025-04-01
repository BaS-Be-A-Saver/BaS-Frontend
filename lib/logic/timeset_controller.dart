import 'package:get/get.dart';

class TimeSetController extends GetxController {
  RxInt selectedMinute = 20.obs; //기본값 
  RxInt selectedSecond = 0.obs;  //기본값

  void updateMinute(int minute) {
    selectedMinute.value = minute;
  }

  void updateSecond(int second) {
    selectedSecond.value = second;
  }

  static TimeSetController get to => Get.find();
}