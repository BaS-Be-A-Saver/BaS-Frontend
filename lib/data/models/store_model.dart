import 'package:flutter/material.dart';

class StoreModel {
  final String name;
  final String category;
  final String photo;
  final bool paid;

  StoreModel({required this.category, required this.name, required this.photo, required this.paid});
}

List<StoreModel> storeData = [
  StoreModel(category: "샤워 캡", name: "그냥 캡", photo: "asset/image/haircapwhite.png", paid : false),
  StoreModel(category: "샤워 캡", name: "울트라 캡", photo: "asset/image/haircappink.png", paid : false),
  StoreModel(category: "샤워 캡", name: "간지 캡", photo: "asset/image/haircapyellow.png", paid : false),

  StoreModel(category: "샤워 가운", name: "그냥 수건", photo: "asset/image/towelwhite.png", paid : false),
  StoreModel(category: "샤워 가운", name: "예삐 수건", photo: "asset/image/towelpink.png", paid : false),
  StoreModel(category: "샤워 가운", name: "금 수건", photo: "asset/image/towelyellow.png", paid : false),
  StoreModel(category: "샤워 가운", name: "멋진 가운", photo: "asset/image/robewhite.png", paid : false),
  StoreModel(category: "샤워 가운", name: "짱 가운", photo: "asset/image/towelpink.png", paid : false),
  StoreModel(category: "샤워 가운", name: "간지 가운", photo: "asset/image/robeyellow.png", paid : false),
  StoreModel(category: "샤워 가운", name: "행운 가운", photo: "asset/image/robegreen.png", paid : false),

  StoreModel(category: "소품", name: "샤워 타올", photo: "asset/image/haircapwhite.png", paid : false),
  StoreModel(category: "소품", name: "샤워 볼", photo: "asset/image/haircapwhite.png", paid : false),

];
