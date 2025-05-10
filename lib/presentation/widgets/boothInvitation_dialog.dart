import 'package:beasavor/common/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void boothInvitationDialog(BuildContext context, String name) {
  String invitationCode = '394129';

  showDialog(
    context: context,
    builder: (_) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '부스에 친구 초대하기',
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'PretendardSemibold',
                      color: AppColors.gray70,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.close,
                      size: 20,
                      color: AppColors.gray70,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 19),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      '초대코드를 복사하여 친구에게 알려주세요',
                      style: TextStyle(
                        fontFamily: 'PretendardRegular',
                        fontSize: 14,
                        color: AppColors.gray50,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontFamily: 'PretendardSemibold',
                              color: AppColors.blue100,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 6),
                          OutlinedButton(
                            onPressed: () {
                              Clipboard.setData(
                                  ClipboardData(text: invitationCode));

                              // 복사 완료 알림
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  width: 200,
                                  content: Text(
                                    '복사되었습니다: $invitationCode',
                                    style: TextStyle(color: AppColors.gray70),
                                  ),
                                  duration: Duration(seconds: 1),
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  backgroundColor: AppColors.gray5,
                                  elevation: 1,
                                ),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: AppColors.blue100,
                                width: 1,
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 9,
                                horizontal: 56,
                              ),
                            ),
                            child: Text(
                              invitationCode,
                              style: TextStyle(
                                fontFamily: 'PretendardSemibold',
                                fontSize: 16,
                                color: AppColors.blue100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
