import 'package:beasavor/presentation/screens/calendar_screen.dart';
import 'package:beasavor/presentation/screens/closet_screen.dart';
import 'package:beasavor/presentation/screens/setting_screen.dart';
import 'package:beasavor/presentation/widgets/timeset_dialog.dart';
import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:beasavor/logic/nickname_controller.dart';
import 'package:beasavor/presentation/widgets/nickname_dialog.dart';
import 'package:beasavor/logic/timeset_controller.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  final NicknameController controller = Get.find(); // 닉네임 컨트롤러 가져오기
  final TimeSetController timeController = Get.find(); // 목표 시간 컨트롤러 가져오기

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 402,
              height: 320,
              color: AppColors.blue10,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      height: 40,
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const SettingScreen())),
                        child: Icon(
                          Icons.settings_outlined,
                          size: 30,
                          color: AppColors.blue50,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    )
                  ]),
                  Center(
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColors.white),
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 48),
                      Center(
                        child: Obx(
                          () => Text(
                            controller.nickname.value, //닉네임 표시
                            style: AppFonts.bold
                                .copyWith(fontSize: 20, color: AppColors.black),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 24,
                          color: AppColors.gray50,
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => NicknameDialog());
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const ClosetScreen())),
                        child: Container(
                          width: 164,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.blue100,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.checkroom,
                                color: AppColors.blue100,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '옷 갈아입기',
                                style: AppFonts.regular.copyWith(
                                    color: AppColors.blue100, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const CalendarScreen())),
                        child: Container(
                          width: 164,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.blue100,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.blue100),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: AppColors.white,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                '캘린더 보기',
                                style: AppFonts.regular.copyWith(
                                    color: AppColors.white, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 402,
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '04',
                        style: AppFonts.bold
                            .copyWith(fontSize: 40, color: AppColors.black),
                      ),
                      Text(
                        'TUE',
                        style: AppFonts.bold
                            .copyWith(fontSize: 16, color: AppColors.black),
                      ),
                    ],
                  ),
                  Text(
                    'Feburary',
                    style: AppFonts.bold
                        .copyWith(fontSize: 24, color: AppColors.gray70),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error,
                        size: 60,
                        color: AppColors.yellow100,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 402,
              height: 320,
              color: AppColors.yellow10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'STILL\nSHOWERLESS?',
                        style: AppFonts.special.copyWith(
                            fontSize: 36,
                            color: AppColors.yellow100,
                            height: 1.0),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 232,
                        height: 32,
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.white),
                        child: Text(
                          '오늘은 아직 샤워를 하지 않았어요!',
                          style: AppFonts.regular
                              .copyWith(fontSize: 15, color: AppColors.gray50),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '목표 시간',
                              style: AppFonts.semibold.copyWith(
                                  fontSize: 16, color: AppColors.gray70),
                            ),
                            IconButton(
                              alignment: Alignment.centerLeft,
                              icon: Icon(
                                Icons.edit,
                                size: 16,
                                color: AppColors.gray50,
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => TimeSetDialog());
                              },
                            ),
                            Obx(() => Row(
                                  children: [
                                    timeController.selectedMinute.value < 10
                                        ? Text(
                                            '0${timeController.selectedMinute.value} min',
                                            style: AppFonts.semibold.copyWith(
                                                fontSize: 16,
                                                color: AppColors.gray70),
                                          )
                                        : Text(
                                            '${timeController.selectedMinute.value} min',
                                            style: AppFonts.semibold.copyWith(
                                                fontSize: 16,
                                                color: AppColors.gray70),
                                          ),
                                          SizedBox(width: 3,),
                                    timeController.selectedSecond.value < 10
                                        ? Text(
                                            '0${timeController.selectedSecond.value} sec',
                                            style: AppFonts.semibold.copyWith(
                                                fontSize: 16,
                                                color: AppColors.gray70),
                                          )
                                        : Text(
                                            '${timeController.selectedSecond.value} sec',
                                            style: AppFonts.semibold.copyWith(
                                                fontSize: 16,
                                                color: AppColors.gray70),
                                          ),
                                  ],
                                ))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
