import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:beasavor/data/models/face_category_model.dart';
import 'package:beasavor/data/models/face_component_model.dart';
import 'package:beasavor/presentation/widgets/closetItem_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingFaceScreen extends StatefulWidget {
  const OnboardingFaceScreen({super.key});

  @override
  State<OnboardingFaceScreen> createState() => _OnboardingFaceScreenState();
}

class _OnboardingFaceScreenState extends State<OnboardingFaceScreen> {
  String selectedCategory = "피부";

  @override
  Widget build(BuildContext context) {
    faceComponentData
        .where((item) => item.category == selectedCategory)
        .toList();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 107),
          // progress bar
          Container(
            height: 4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.gray10,
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: 0.66,
              child: Container(
                color: AppColors.blue100,
              ),
            ),
          ),
          const SizedBox(height: 47),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // logo
                  Image.asset(
                    AppImages.logolight,
                    width: 85,
                  ),
                  const SizedBox(height: 16),
                  // 제목
                  const Text(
                    '사용할 캐릭터의\n얼굴을 만들어주세요',
                    style: TextStyle(
                      fontFamily: 'PretendardSemiBold',
                      color: AppColors.black,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 4),
                  // 설명
                  const Text(
                    '만들고 난 뒤에는 수정이 불가하니 신중하게 선택해주세요',
                    style: TextStyle(
                      fontFamily: 'PretendardRegular',
                      color: AppColors.gray70,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 29),

                  // 얼굴 미리보기
                  Center(
                    child: Image.asset(
                      "asset/image/face/default face.png",
                      width: 130,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 얼굴요소 선택 영역
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              decoration: BoxDecoration(
                  color: AppColors.gray5,
                  border: Border(
                    top: BorderSide(color: AppColors.gray10),
                  )),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 카테고리 (피부, 눈, 코, 입 선택)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: SizedBox(
                      height: 47,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: faceCategoryData.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () => setState(() {
                            selectedCategory = faceCategoryData[index].name;
                          }),
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 15, left: 0, right: 15),
                            alignment: Alignment.center,
                            width: 49,
                            height: 32,
                            decoration: BoxDecoration(
                                color: selectedCategory ==
                                        faceCategoryData[index].name
                                    ? AppColors.blue20
                                    : AppColors.white,
                                border: Border.all(color: AppColors.blue20),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              faceCategoryData[index].name,
                              style: AppFonts.regular.copyWith(
                                  fontSize: 14, color: AppColors.gray70),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 17),
                  // 아이템 선택
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Wrap(
                      spacing: 13,
                      runSpacing: 0,
                      children: faceComponentData
                          .where((item) => item.category == selectedCategory)
                          .map((item) => SizedBox(
                                width: 76,
                                child: ClosetItemWidget(
                                  name: item.name,
                                  photo: item.photo,
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 40),
                  // 다음 버튼
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: OutlinedButton(
                      onPressed: () {
                        context.go('/onboarding_timeset');
                      },
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(double.infinity, 48),
                        side: const BorderSide(
                          color: AppColors.blue100,
                          width: 1.5,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: AppColors.white,
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            '다음',
                            style: TextStyle(
                              fontFamily: 'PretendardBold',
                              color: AppColors.blue100,
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right_sharp,
                            color: AppColors.blue100,
                            weight: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 53),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
