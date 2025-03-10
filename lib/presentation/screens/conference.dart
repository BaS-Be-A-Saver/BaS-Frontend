import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_icon.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConferenceScreen extends StatelessWidget {
  const ConferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //TODO: appbar 배경 색상 변경
          leading: Padding(
            padding: const EdgeInsets.only(left: 15), //로고와 왼쪽 화면 사이 간격 띄우기 위함
            child: Image.asset(AppImages.logo)
          ),
          actions: [
            SvgPicture.asset(
              //svg파일 (pub.dev에서 패키지 다운받아옴)
              AppIcons.water,
              width: 40,
              height: 40,
            ),
          ]),
      body: SingleChildScrollView(
        // 스크롤 가능하게
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15, //body 전체 수평 간격 띄우기
            vertical: 10, //body 전체 수직 간격 띄우기
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //좌측 정렬
            children: [
              Text(
                '마이페이지',
                style: AppFonts.bold.copyWith(fontSize: 20),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10, right: 10, top: 7),
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                width: 190,
                height: 105,
                decoration: BoxDecoration(
                    color: const Color(0xffF91F15).withOpacity(0.05),
                    borderRadius: BorderRadius.circular(15), //모서리 둥글게
                    border: Border.all(
                      color: const Color(0xffF91F15).withOpacity(0.1),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, //children 내부 위젯들 사이 간격 띄우기
                  children: [
                    Column(
                      // UI를 보면 '개강 푸드 뭐먹음?'과 '음식 공유하면 파티가 열려요'가 붙어있고 참여하기가 따로 띄워져야 하므로 앞에 두개 column으로 묶어 한 위젯으로 만들어 준 것!
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '개강 푸드 ?',
                          style: AppFonts.bold.copyWith(fontSize: 15),
                        ),
                        Text('음식 공유하면 파티가 열려요🎉',
                            style: AppFonts.regular.copyWith(
                              color: AppColors.gray70,
                              fontSize: 12,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '참여하기',
                          style: AppFonts.bold
                              .copyWith(color: AppColors.gray10, fontSize: 13),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded,
                            color: Color(0xffA6A6A6), size: 12)
                      ],
                    ),
                  ],
                ),
              ),

              //TODO: 나머지 UI 코드 작성
            ],
          ),
        ),
      ),
    );
  }
}