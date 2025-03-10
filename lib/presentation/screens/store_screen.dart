import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray5,
      appBar: AppBar(
        title: Text('상점'),
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
            ),
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
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 76,
                      height: 152,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Container(
                            alignment: Alignment.center,
                            width: 44,
                            height: 24,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(color: AppColors.blue100),
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              '보유중',
                              style: AppFonts.bold.copyWith(
                                  fontSize: 12, color: AppColors.blue100),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 76,
                      height: 152,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Container(
                            alignment: Alignment.center,
                            width: 44,
                            height: 24,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(color: AppColors.blue100),
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              '보유중',
                              style: AppFonts.bold.copyWith(
                                  fontSize: 12, color: AppColors.blue100),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 76,
                      height: 152,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Container(
                              alignment: Alignment.center,
                              width: 60,
                              height: 24,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.water_drop,
                                    size: 16,
                                    color: AppColors.blue100,
                                  ),
                                  Text(
                                    '100',
                                    style: AppFonts.bold.copyWith(
                                        fontSize: 12, color: AppColors.blue100),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                      width: 76,
                      height: 152,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Container(
                              alignment: Alignment.center,
                              width: 60,
                              height: 24,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.water_drop,
                                    size: 16,
                                    color: AppColors.blue100,
                                  ),
                                  Text(
                                    '120',
                                    style: AppFonts.bold.copyWith(
                                        fontSize: 12, color: AppColors.blue100),
                                  )
                                ],
                              ))
                        ],
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
