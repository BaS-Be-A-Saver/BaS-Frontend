import 'package:beasavor/common/utils/app_color.dart';
import 'package:flutter/material.dart';

enum AddBoothStep { select, create, join }

void showAddBoothModal(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    builder: (_) => const AddBoothDialog(),
  );
}

class AddBoothDialog extends StatefulWidget {
  const AddBoothDialog({super.key});

  @override
  State<AddBoothDialog> createState() => _AddBoothDialogState();
}

class _AddBoothDialogState extends State<AddBoothDialog> {
  AddBoothStep step = AddBoothStep.select;
  final TextEditingController inputController = TextEditingController();

  void goTo(AddBoothStep newStep) {
    setState(() {
      step = newStep;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: _buildModalContent(),
        ),
      ),
    );
  }

  Widget _buildModalContent() {
    return Container(
      key: ValueKey(step),
      width: 332,
      height: 207,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      step == AddBoothStep.select
                          ? '부스 추가하기'
                          : step == AddBoothStep.create
                              ? '새로운 부스 만들기'
                              : '친구의 부스에 들어가기',
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
                Spacer(),
              ],
            ),
          ),
          if (step == AddBoothStep.select) _buildSelectButtons(),
          if (step == AddBoothStep.create) _buildCreateBooth(),
          if (step == AddBoothStep.join) _buildJoinBooth(),
        ],
      ),
    );
  }

  Widget _buildSelectButtons() {
    return Column(
      children: [
        _outlinedButton('새로운 부스 만들기', () => goTo(AddBoothStep.create)),
        const SizedBox(height: 15),
        _outlinedButton('친구의 부스에 들어가기', () => goTo(AddBoothStep.join)),
      ],
    );
  }

  Widget _outlinedButton(String text, VoidCallback onTap) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: AppColors.blue100,
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'PretendardBold',
            color: AppColors.blue100,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget _buildCreateBooth() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('부스의 이름을 지어주세요',
              style: TextStyle(
                fontFamily: 'PretendardRegular',
                fontSize: 14,
                color: AppColors.gray50,
              )),
          const SizedBox(height: 7),
          TextField(
            controller: inputController,
            cursorColor: AppColors.gray70,
            decoration: const InputDecoration(
                hintText: '최대 12자 한글/영문 가능',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                hintStyle: TextStyle(
                  fontFamily: 'PretendardRegular',
                  fontSize: 14,
                  color: AppColors.gray40,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.gray10,
                    width: 1.5,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.gray70,
                    width: 1.5,
                  ),
                )),
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerRight,
            child: OutlinedButton(
              onPressed: () {
                // 생성 로직
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                minimumSize: Size.zero,
                side: const BorderSide(
                  color: AppColors.blue100,
                  width: 1.5,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: AppColors.white,
                //elevation: 0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '만들기',
                    style: TextStyle(
                      fontFamily: 'PretendardSemibold',
                      fontSize: 12,
                      color: AppColors.blue100,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward,
                    color: AppColors.blue100,
                    size: 12,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildJoinBooth() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('부스의 초대코드를 입력해주세요',
              style: TextStyle(
                fontFamily: 'PretendardRegular',
                fontSize: 14,
                color: AppColors.gray50,
              )),
          const SizedBox(height: 7),
          TextField(
            controller: inputController,
            cursorColor: AppColors.gray70,
            decoration: const InputDecoration(
                hintText: '초대코드를 입력해주세요',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                hintStyle: TextStyle(
                  fontFamily: 'PretendardRegular',
                  fontSize: 14,
                  color: AppColors.gray40,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.gray10,
                    width: 1.5,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.gray70,
                    width: 1.5,
                  ),
                )),
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerRight,
            child: OutlinedButton(
              onPressed: () {
                // 참여 로직
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                minimumSize: Size.zero,
                side: const BorderSide(
                  color: AppColors.blue100,
                  width: 1.5,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: AppColors.white,
                //elevation: 0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '들어가기',
                    style: TextStyle(
                      fontFamily: 'PretendardSemibold',
                      fontSize: 12,
                      color: AppColors.blue100,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward,
                    color: AppColors.blue100,
                    size: 12,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
