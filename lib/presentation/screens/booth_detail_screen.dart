import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/data/models/boothmember_model.dart';
import 'package:beasavor/presentation/widgets/boothInvitation_dialog.dart';
import 'package:beasavor/presentation/widgets/boothmember_widget.dart';
import 'package:beasavor/presentation/widgets/showExitBooth_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BoothDetailScreen extends StatelessWidget {
  final String name;

  const BoothDetailScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Row(
          children: [
            SizedBox(width: 10),
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.black,
                size: 20,
              ),
              onPressed: () => context.pop(),
            ),
            Text(
              name,
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 24,
                fontFamily: 'PretendardBold',
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/image/showerbooth background.png'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white, // 배경 흰색
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.gray10, // 원하는 색으로 변경
                    width: 1.0,
                  ),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    children: [
                      TextSpan(
                        text: '12월 평균 샤워 시간  ',
                        style: TextStyle(
                          fontFamily: 'PretendardRagular',
                          color: AppColors.gray70,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: '18:54',
                        style: TextStyle(
                          fontFamily: 'PretendardBold',
                          color: AppColors.gray70,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 13,
                  childAspectRatio: 0.5,
                ),
                itemCount: boothMemberData.length,
                itemBuilder: (context, index) {
                  final member = boothMemberData[index];
                  return BoothmemberWidget(member: member);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 46),
              child: Center(
                  child: TextButton(
                onPressed: () => showExitBoothDialog(context),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(5), // 텍스트만 있는 버튼처럼 보이게
                  minimumSize: Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text(
                  '부스에서 나가기',
                  style: TextStyle(
                    color: AppColors.gray50,
                    fontSize: 16,
                    fontFamily: 'PretendardSemibold',
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.gray50,
                  ),
                ),
              )),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: FloatingActionButton(
          onPressed: () {
            //초대코드 모달창
            boothInvitationDialog(context, name);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          backgroundColor: AppColors.blue100,
          child: const Icon(
            Icons.add,
            size: 32,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
