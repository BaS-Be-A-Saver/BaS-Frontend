import 'package:beasavor/data/models/showerbooth_model.dart';
import 'package:beasavor/presentation/widgets/addbooth_modal.dart';
import 'package:beasavor/presentation/widgets/showerbooth_widget.dart';
import 'package:flutter/material.dart';

class ShowerboothScreen extends StatelessWidget {
  const ShowerboothScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 28,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Wrap(
                  spacing: 18,
                  runSpacing: 30,
                  children: [
                    ...showerboothData.map((item) => SizedBox(
                          width: 100,
                          child: ShowerboothWidget(
                            boothdoor: item.boothdoor,
                            name: item.name,
                          ),
                        )),
                    SizedBox(
                      width: 100,
                      child: GestureDetector(
                          onTap: () {
                            // 추가 버튼 클릭 시 모달창으로 이동
                            showAddBoothModal(context);
                          },
                          child: Image.asset('asset/image/addbooth.png')),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
