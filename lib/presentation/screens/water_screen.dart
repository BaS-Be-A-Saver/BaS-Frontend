import 'package:beasavor/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_image.dart';

class WaterScreen extends StatelessWidget {
  const WaterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.blue50,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MainScreen())),
          child: Icon(
            Icons.arrow_back_ios,
            size: 24,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
                colors: [AppColors.blue100, AppColors.white], radius: 0.8)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, //좌측 정렬
            children: [
              Center(
                child: Container(
                  width: 250,
                  height: 250,
                  child: Column(
                    children: [
                      Image.asset(
                        AppImages.watermark,
                        width: 240,
                        height: 240,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                width: 360,
                height: 400,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(32), //모서리 둥글게
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.gray40.withOpacity(0.6),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(1, 6))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, //children 내부 위젯들 사이 간격 띄우기
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(24, 34, 0, 34),
                              width: 360,
                              height: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.blue20,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    width: 52,
                                    height: 52,
                                    child: Icon(
                                      Icons.event_available,
                                      color: AppColors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    width: 196,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '출석체크하고',
                                          style: AppFonts.bold.copyWith(
                                              fontSize: 20,
                                              color: AppColors.gray70),
                                        ),
                                        Text(
                                          '물방울 5개 받기',
                                          style: AppFonts.regular.copyWith(
                                              fontSize: 16,
                                              color: AppColors.blue100),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.gray10,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    width: 52,
                                    height: 52,
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(24, 34, 0, 34),
                              width: 360,
                              height: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.blue20,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    width: 52,
                                    height: 52,
                                    child: Icon(
                                      Icons.bathtub_outlined,
                                      color: AppColors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    width: 196,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '목표 성공하고',
                                          style: AppFonts.bold.copyWith(
                                              fontSize: 20,
                                              color: AppColors.gray70),
                                        ),
                                        Text(
                                          '물방울 5개 받기',
                                          style: AppFonts.regular.copyWith(
                                              fontSize: 16,
                                              color: AppColors.blue100),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.gray10,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    width: 52,
                                    height: 52,
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(24, 34, 0, 34),
                              width: 360,
                              height: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.blue20,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    width: 52,
                                    height: 52,
                                    child: Icon(
                                      Icons.videocam_outlined,
                                      color: AppColors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    width: 196,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '광고 시청하고',
                                          style: AppFonts.bold.copyWith(
                                              fontSize: 20,
                                              color: AppColors.gray70),
                                        ),
                                        Text(
                                          '물방울 5개 받기',
                                          style: AppFonts.regular.copyWith(
                                              fontSize: 16,
                                              color: AppColors.blue100),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.gray10,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    width: 52,
                                    height: 52,
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
