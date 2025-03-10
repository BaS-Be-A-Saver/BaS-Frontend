import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';

class ClosetScreen extends StatelessWidget {
  const ClosetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray5,
      appBar: AppBar(
        title: Text('내 옷장'),
        titleTextStyle: AppFonts.bold.copyWith(
          fontSize: 17,
        ),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 402,
              height: 355,
              color: AppColors.blue10,
            ), //들어가야할것 : 상점 버튼, 유저 아바타, 유저 이름
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 30, right: 11),
                      alignment: Alignment.center,
                      width: 72,
                      height: 32,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(color: AppColors.blue20),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        '샤워 캡',
                        style: AppFonts.regular
                            .copyWith(fontSize: 14, color: AppColors.gray70),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 11, top: 15),
                      alignment: Alignment.center,
                      width: 72,
                      height: 32,
                      decoration: BoxDecoration(
                          color: AppColors.blue20,
                          border: Border.all(color: AppColors.blue20),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        '샤워 가운',
                        style: AppFonts.regular
                            .copyWith(fontSize: 14, color: AppColors.gray70),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      alignment: Alignment.center,
                      width: 72,
                      height: 32,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(color: AppColors.blue20),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        '소품',
                        style: AppFonts.regular
                            .copyWith(fontSize: 14, color: AppColors.gray70),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 76,
                      height: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            //required
                            width: 76,
                            height: 99,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(color: AppColors.gray10),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Text(
                            //required
                            '구린 가운',
                            style: AppFonts.semibold
                                .copyWith(color: AppColors.black, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 76,
                      height: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            //required
                            width: 76,
                            height: 99,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(color: AppColors.gray10),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Text(
                            //required
                            '멋진 가운',
                            style: AppFonts.semibold
                                .copyWith(color: AppColors.black, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 76,
                      height: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            //required
                            width: 76,
                            height: 99,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(color: AppColors.gray10),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Text(
                            //required
                            '대박 가운',
                            style: AppFonts.semibold
                                .copyWith(color: AppColors.black, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 76,
                      height: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            //required
                            width: 76,
                            height: 99,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(color: AppColors.gray10),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Text(
                            //required
                            '짱 가운',
                            style: AppFonts.semibold
                                .copyWith(color: AppColors.black, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DottedBorder(
                      color: AppColors.gray10,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(20),
                      dashPattern: [10, 10],
                      child: Container(
                        margin: EdgeInsets.only(left: 20, top: 16),
                        width: 76,
                        height: 99,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.add_circle,
                              color: AppColors.blue50,
                              size: 36,
                            ),
                            Text('쇼핑하러 가기',
                                style: AppFonts.semibold.copyWith(
                                    fontSize: 12,
                                    color: AppColors.gray10,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.gray10))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
