import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:beasavor/logic/nickname_controller.dart';

class NicknameDialog extends StatelessWidget {
  final NicknameController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    TextEditingController textController =
        TextEditingController(text: controller.nickname.value);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 340,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.close, color: AppColors.black),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text("닉네임",
                        style: AppFonts.semibold
                            .copyWith(color: AppColors.black, fontSize: 16)),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: textController,
                    cursorColor: AppColors.blue100,
                    decoration: InputDecoration(
                        hintText: "닉네임을 입력하세요",
                        hintStyle: AppFonts.regular
                            .copyWith(color: AppColors.gray40, fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.blue100, width: 1.0),
                            borderRadius: BorderRadius.circular(12))),

                    onChanged: (value) =>
                        controller.setNickname(value), // 입력값 반영
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      '2-10자, 한글/영문/숫자 입력 가능',
                      style: AppFonts.regular
                          .copyWith(color: AppColors.gray40, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 110,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: AppColors.blue100),
                  onPressed: () {
                    print("입력한 닉네임: ${controller.nickname.value}");
                    Navigator.pop(context);
                  },
                  child: Text(
                    "적용하기",
                    style: AppFonts.semibold
                        .copyWith(color: AppColors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
