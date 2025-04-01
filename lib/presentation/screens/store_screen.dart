import 'package:beasavor/data/models/category_model.dart';
import 'package:beasavor/data/models/store_model.dart';
import 'package:beasavor/presentation/widgets/closetItem_widget.dart';
import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  String selectedCategory = "샤워 캡";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray5,
      appBar: AppBar(
        title: Text('상점'),
        titleTextStyle: AppFonts.bold.copyWith(
          fontSize: 17,
        ),
        foregroundColor: AppColors.blue50,
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 402,
              height: 355,
              color: AppColors.blue10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                            margin:
                                EdgeInsets.only(top: 15, left: 20, right: 5),
                            alignment: Alignment.center,
                            width: 72,
                            height: 32,
                            decoration: BoxDecoration(
                                color:
                                    selectedCategory == categoryData[index].name
                                        ? AppColors.blue50
                                        : AppColors.white,
                                border: Border.all(color: AppColors.blue50),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              categoryData[index].name,
                              style: AppFonts.regular.copyWith(
                                  fontSize: 14, color: AppColors.gray70),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 16,
                    runSpacing: 12,
                    children: storeData
                        .where((item) => item.category == selectedCategory)
                        .map((item) => SizedBox(
                            width: 76,
                            child: ClosetItemWidget(
                                name: item.name, photo: item.photo)))
                        .toList(),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //       width: 76,
                //       height: 152,
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                //           Container(
                //             alignment: Alignment.center,
                //             width: 44,
                //             height: 24,
                //             decoration: BoxDecoration(
                //                 color: AppColors.white,
                //                 border: Border.all(color: AppColors.blue100),
                //                 borderRadius: BorderRadius.circular(8)),
                //             child: Text(
                //               '보유중',
                //               style: AppFonts.bold.copyWith(
                //                   fontSize: 12, color: AppColors.blue100),
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //     Container(
                //       width: 76,
                //       height: 152,
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                //           Container(
                //             alignment: Alignment.center,
                //             width: 44,
                //             height: 24,
                //             decoration: BoxDecoration(
                //                 color: AppColors.white,
                //                 border: Border.all(color: AppColors.blue100),
                //                 borderRadius: BorderRadius.circular(8)),
                //             child: Text(
                //               '보유중',
                //               style: AppFonts.bold.copyWith(
                //                   fontSize: 12, color: AppColors.blue100),
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //     Container(
                //       width: 76,
                //       height: 152,
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                //           Container(
                //               alignment: Alignment.center,
                //               width: 60,
                //               height: 24,
                //               child: Row(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Icon(
                //                     Icons.water_drop,
                //                     size: 16,
                //                     color: AppColors.blue100,
                //                   ),
                //                   Text(
                //                     '100',
                //                     style: AppFonts.bold.copyWith(
                //                         fontSize: 12, color: AppColors.blue100),
                //                   )
                //                 ],
                //               ))
                //         ],
                //       ),
                //     ),
                //     Container(
                //       width: 76,
                //       height: 152,
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                //           Container(
                //               alignment: Alignment.center,
                //               width: 60,
                //               height: 24,
                //               child: Row(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Icon(
                //                     Icons.water_drop,
                //                     size: 16,
                //                     color: AppColors.blue100,
                //                   ),
                //                   Text(
                //                     '120',
                //                     style: AppFonts.bold.copyWith(
                //                         fontSize: 12, color: AppColors.blue100),
                //                   )
                //                 ],
                //               ))
                //         ],
                //       ),
                //     ),
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
