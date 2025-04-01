import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:beasavor/logic/timeset_controller.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';

class TimeSetDialog extends StatelessWidget {
  const TimeSetDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final TimeSetController controller = Get.find(); // 컨트롤러 가져오기

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.close, color: AppColors.black),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Text(
              "목표 시간 설정",
              style: AppFonts.semibold
                  .copyWith(fontSize: 18, color: AppColors.black),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => DropdownButton<int>(
                      // 분 선택 드롭다운
                      value: controller.selectedMinute.value,
                      items: List.generate(31, (index) {
                        return DropdownMenuItem(
                            value: index,
                            child: index >= 10
                                ? Text(
                                    "$index min",
                                    style: AppFonts.medium.copyWith(
                                        color: AppColors.black, fontSize: 16),
                                  )
                                : Text(
                                    "0$index min",
                                    style: AppFonts.medium.copyWith(
                                        color: AppColors.black, fontSize: 16),
                                  ));
                      }),
                      onChanged: (value) {
                        if (value != null) {
                          controller.updateMinute(value);
                        }
                      },
                    )),
                SizedBox(
                  width: 12,
                ),
                Obx(() => DropdownButton<int>(
                      // 초 선택 드롭다운
                      value: controller.selectedSecond.value,
                      items: List.generate(60, (index) {
                        return DropdownMenuItem(
                            value: index,
                            child: index >= 10
                                ? Text(
                                    "$index sec",
                                    style: AppFonts.medium.copyWith(
                                        color: AppColors.black, fontSize: 16),
                                  )
                                : Text(
                                    "0$index sec",
                                    style: AppFonts.medium.copyWith(
                                        color: AppColors.black, fontSize: 16),
                                  ));
                      }),
                      onChanged: (value) {
                        if (value != null) {
                          controller.updateSecond(value);
                        }
                      },
                    )),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: AppColors.blue100),
              onPressed: () => Navigator.pop(context),
              child: Text(
                "적용하기",
                style: AppFonts.semibold
                    .copyWith(color: AppColors.white, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
