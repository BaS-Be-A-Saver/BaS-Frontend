import 'package:flutter/material.dart';

class ClosetModel {
  final String name;
  final String category;
  final String photo;

  ClosetModel({required this.category, required this.name, required this.photo});
}

List<ClosetModel> closetData = [
  ClosetModel(category: "샤워 캡", name: "그냥 캡", photo: "asset/image/haircapwhite.png"),
  ClosetModel(category: "샤워 캡", name: "울트라 캡", photo: "asset/image/haircappink.png"),
  ClosetModel(category: "샤워 캡", name: "간지 캡", photo: "asset/image/haircapyellow.png"),

  ClosetModel(category: "샤워 가운", name: "그냥 수건", photo: "asset/image/towelwhite.png"),
  ClosetModel(category: "샤워 가운", name: "예삐 수건", photo: "asset/image/towelpink.png"),
  ClosetModel(category: "샤워 가운", name: "금 수건", photo: "asset/image/towelyellow.png"),
  ClosetModel(category: "샤워 가운", name: "멋진 가운", photo: "asset/image/robewhite.png"),
  ClosetModel(category: "샤워 가운", name: "짱 가운", photo: "asset/image/towelpink.png"),
  ClosetModel(category: "샤워 가운", name: "간지 가운", photo: "asset/image/robeyellow.png"),
  ClosetModel(category: "샤워 가운", name: "행운 가운", photo: "asset/image/robegreen.png"),

  ClosetModel(category: "소품", name: "샤워 타올", photo: "asset/image/haircapwhite.png"),
  ClosetModel(category: "소품", name: "샤워 볼", photo: "asset/image/haircapwhite.png"),

];
