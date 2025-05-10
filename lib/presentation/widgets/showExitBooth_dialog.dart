import 'package:beasavor/common/utils/app_color.dart';
import 'package:flutter/material.dart';

void showExitBoothDialog(BuildContext context) {
  showDialog(
    context: context,
    //barrierDismissible: false, // 바깥 클릭 방지
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    size: 24,
                    color: AppColors.gray70,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '부스에서 나가시겠습니까?',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'PretendardSemibold',
                  color: AppColors.gray70,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // 네 버튼
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // 다이얼로그 닫기
                      Navigator.of(context).pop(); // 현재 페이지에서 나가기
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.blue100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 9, horizontal: 53),
                    ),
                    child: const Text(
                      '네',
                      style: TextStyle(
                        color: AppColors.blue100,
                        fontFamily: 'PretendardSemibold',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  // 아니오 버튼
                  FilledButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // 다이얼로그 닫기
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.blue100,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 9, horizontal: 39),
                    ),
                    child: const Text(
                      '아니요',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PretendardSemibold',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
