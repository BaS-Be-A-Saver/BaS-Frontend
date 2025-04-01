import 'package:get/get.dart';

class NavigatorController extends GetxController{
  RxInt currentIndex = 0.obs;

  void tapIndex(int index){
    currentIndex.value = index;
  }

  static NavigatorController get to => Get.find();
}