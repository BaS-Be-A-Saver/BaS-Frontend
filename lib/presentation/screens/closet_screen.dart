import 'package:beasavor/data/models/category_model.dart';
import 'package:beasavor/data/models/closet_model.dart';
import 'package:beasavor/presentation/screens/store_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/presentation/widgets/closetItem_widget.dart';

class ClosetScreen extends StatefulWidget {
  const ClosetScreen({super.key});

  @override
  State<ClosetScreen> createState() => _ClosetScreenState();
}

class _ClosetScreenState extends State<ClosetScreen> {
  String selectedCategory = "샤워 캡"; // 기본 선택 카테고리

  @override
  Widget build(BuildContext context) {
    List<ClosetModel> filteredItems =
        closetData.where((item) => item.category == selectedCategory).toList();

    return Scaffold(
      backgroundColor: AppColors.gray5,
      appBar: AppBar(
        foregroundColor: AppColors.blue50,
        title: Text('내 옷장'),
        titleTextStyle: AppFonts.bold.copyWith(
          fontSize: 17,
        ),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 355,
              color: AppColors.blue10,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const StoreScreen())),
                        child: Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.blue50,
                              boxShadow: [
                                BoxShadow(
                                    color: AppColors.gray40,
                                    spreadRadius: 0,
                                    blurRadius: 5,
                                    offset: Offset(0, 2))
                              ]),
                          child: Icon(
                            Icons.storefront_outlined,
                            size: 24,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  )
                ],
              ),
            ), //들어가야할것 : 유저 아바타, 유저 이름
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 47,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryData.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => setState(() {
                        selectedCategory = categoryData[index].name;
                      }),
                      child: Container(
                        margin: EdgeInsets.only(top: 15, left: 20, right: 5),
                        alignment: Alignment.center,
                        width: 72,
                        height: 32,
                        decoration: BoxDecoration(
                            color: selectedCategory == categoryData[index].name
                                ? AppColors.blue50
                                : AppColors.white,
                            border: Border.all(color: AppColors.blue50),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          categoryData[index].name,
                          style: AppFonts.regular
                              .copyWith(fontSize: 14, color: AppColors.gray70),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 12,
                    children: closetData
                        .where((item) => item.category == selectedCategory)
                        .map((item) => SizedBox(
                              width: 76,
                              child: ClosetItemWidget(
                                  name: item.name, photo: item.photo),
                            ))
                        .toList(),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //       width: 76,
                //       height: 130,
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             //required
                //             width: 76,
                //             height: 99,
                //             decoration: BoxDecoration(
                //                 color: AppColors.white,
                //                 border: Border.all(color: AppColors.gray10),
                //                 borderRadius: BorderRadius.circular(20)),
                //           ),
                //           Text(
                //             //required
                //             '구린 가운',
                //             style: AppFonts.semibold
                //                 .copyWith(color: AppColors.black, fontSize: 12),
                //           ),
                //         ],
                //       ),
                //     ),
                //     Container(
                //       width: 76,
                //       height: 130,
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             //required
                //             width: 76,
                //             height: 99,
                //             decoration: BoxDecoration(
                //                 color: AppColors.white,
                //                 border: Border.all(color: AppColors.gray10),
                //                 borderRadius: BorderRadius.circular(20)),
                //           ),
                //           Text(
                //             //required
                //             '멋진 가운',
                //             style: AppFonts.semibold
                //                 .copyWith(color: AppColors.black, fontSize: 12),
                //           ),
                //         ],
                //       ),
                //     ),
                //     Container(
                //       width: 76,
                //       height: 130,
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             //required
                //             width: 76,
                //             height: 99,
                //             decoration: BoxDecoration(
                //                 color: AppColors.white,
                //                 border: Border.all(color: AppColors.gray10),
                //                 borderRadius: BorderRadius.circular(20)),
                //           ),
                //           Text(
                //             //required
                //             '대박 가운',
                //             style: AppFonts.semibold
                //                 .copyWith(color: AppColors.black, fontSize: 12),
                //           ),
                //         ],
                //       ),
                //     ),
                //     Container(
                //       width: 76,
                //       height: 130,
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             //required
                //             width: 76,
                //             height: 99,
                //             decoration: BoxDecoration(
                //                 color: AppColors.white,
                //                 border: Border.all(color: AppColors.gray10),
                //                 borderRadius: BorderRadius.circular(20)),
                //           ),
                //           Text(
                //             //required
                //             '짱 가운',
                //             style: AppFonts.semibold
                //                 .copyWith(color: AppColors.black, fontSize: 12),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 16,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     GestureDetector(
                //       onTap: () => Navigator.of(context).push(MaterialPageRoute(
                //           builder: (context) => const StoreScreen())),
                //       child: DottedBorder(
                //         color: AppColors.gray40,
                //         borderType: BorderType.RRect,
                //         radius: Radius.circular(20),
                //         dashPattern: [10, 10],
                //         child: Container(
                //           width: 76,
                //           height: 99,
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //             children: [
                //               Icon(
                //                 Icons.add_circle,
                //                 color: AppColors.blue50,
                //                 size: 36,
                //               ),
                //               Text('쇼핑하러 가기',
                //                   style: AppFonts.semibold.copyWith(
                //                       fontSize: 12,
                //                       color: AppColors.gray40,
                //                       decoration: TextDecoration.underline,
                //                       decorationColor: AppColors.gray40))
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 76,
                //     ),
                //     SizedBox(
                //       width: 76,
                //     ),
                //     SizedBox(
                //       width: 76,
                //     )
                //   ],
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
