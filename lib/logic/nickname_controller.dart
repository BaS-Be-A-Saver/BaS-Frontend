import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NicknameController extends GetxController {
  RxString nickname = ''.obs;
  void setNickname(String newName) {
    nickname.value = newName;
  } 
}