import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/common/utils/app_icon.dart';
import 'package:beasavor/common/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beasavor/presentation/stopwatch/stopwatch_model.dart';
import 'package:beasavor/presentation/stopwatch/stopwatch_cubit_cubit.dart';
import 'package:beasavor/presentation/stopwatch/stopwatch_cubit_state.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppStopWatchScreen extends StatelessWidget {
  const AppStopWatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StopwatchCubitCubit>(
      create: (context) => StopwatchCubitCubit(),
      child: BlocBuilder<StopwatchCubitCubit, StopwatchCubitState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.white,
              leadingWidth: 80,
              leading: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Image.asset(AppImages.logo),
              ),
              actions: [
                Padding(padding: EdgeInsets.only(right: 15),
                child: SvgPicture.asset(
                  AppIcons.alarm,
                  width: 32,
                  height: 32,
                  color: AppColors.blue50,
                ),)
              ],
            ),
            body: DefaultTabController(
              length: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('목표시간',
                    style: AppFonts.regular.copyWith(
                          color: AppColors.gray50,
                          fontSize: 24,
                  ),),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: AppColors.gray70,
                      width: 4,
                    ))),
                    height: 500,
                    child: TabBarView(
                      children: [
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          if (state.stopwatch.hour != "00") ...[
                            _timeForm(
                              content: state.stopwatch.hour,
                              width: 100,
                              fontSize: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: _timeForm(
                                content: ":",
                                width: null,
                                fontSize: 85,
                              ),
                            ),
                          ],
                          if (state.stopwatch.minute != "00" ||
                              state.stopwatch.hour != "00") ...[
                            _timeForm(
                              content: state.stopwatch.minute,
                              width: 100,
                              fontSize: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: _timeForm(
                                content: ":",
                                width: null,
                                fontSize: 85,
                              ),
                            ),
                          ],
                          _timeForm(
                            content: state.stopwatch.seconds,
                            width: (state.stopwatch.minute != "00" ||
                                    state.stopwatch.hour != "00")
                                ? 100
                                : 120,
                            fontSize: (state.stopwatch.minute != "00" ||
                                    state.stopwatch.hour != "00")
                                ? 70
                                : 80,
                          ),
                          if (state.stopwatch.hour == "00") ...[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: _timeForm(
                                content: ":",
                                width: null,
                                fontSize:
                                    state.stopwatch.minute != "00" ? 85 : 95,
                              ),
                            ),
                            _timeForm(
                                content: state.stopwatch.millseconds,
                                width:
                                    state.stopwatch.minute != "00" ? 100 : 120,
                                fontSize:
                                    state.stopwatch.minute != "00" ? 70 : 80),
                          ],
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _detailForm(
                              title: "Hour",
                              content: state.count ~/ (60000 * 6) < 1
                                  ? null
                                  : state.count ~/ (60000 * 6),
                              contentToDouble: state.count / (60000 * 6) > 1
                                  ? null
                                  : state.count / (60000 * 6),
                            ),
                            _detailForm(
                              title: "Minute",
                              content: state.count ~/ 6000 < 1
                                  ? null
                                  : state.count ~/ 6000,
                              contentToDouble: state.count / 6000 > 1
                                  ? null
                                  : state.count / 6000,
                            ),
                            _detailForm(
                                title: "Seconds", content: state.count ~/ 100),
                            _detailForm(
                                title: "Millseconds", content: state.count),
                          ],
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buttonForm(
                            color: state.stopwatchState == StopwatchState.stop
                                ? AppColors.blue100
                                : AppColors.red100,
                            content: state.stopwatchState == StopwatchState.stop
                                ? "RE"
                                : "STOP",
                            onTap: () {
                              if (state.stopwatchState == StopwatchState.stop) {
                                context.read<StopwatchCubitCubit>().started();
                              } else {
                                context.read<StopwatchCubitCubit>().stoped();
                              }
                            }),
                        if (state.count != 0) ...[
                          GestureDetector(
                            onTap: () =>
                                context.read<StopwatchCubitCubit>().reset(),
                            child: const Icon(
                              Icons.refresh,
                              size: 38,
                            ),
                          ),
                        ],
                        _buttonForm(
                            color: state.stopwatchState == StopwatchState.reset
                                ? Colors.green
                                : Colors.amber,
                            content:
                                state.stopwatchState == StopwatchState.reset
                                    ? "START"
                                    : "LAP",
                            onTap: () {
                              if (state.stopwatchState ==
                                  StopwatchState.reset) {
                                context.read<StopwatchCubitCubit>().started();
                              } else {
                                context.read<StopwatchCubitCubit>().addLap();
                              }
                            }),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.separated(
                        itemCount: state.laps.length,
                        itemBuilder: (context, i) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("LAP ${((i) - (state.laps.length)).abs()}"),
                              RichText(
                                  text: TextSpan(
                                      text: state.laps[i].hour == "00"
                                          ? ""
                                          : "${state.laps[i].hour}:",
                                      children: [
                                    TextSpan(
                                      text: state.laps[i].hour != "00" ||
                                              state.laps[i].minute == "00"
                                          ? ""
                                          : "${state.laps[i].minute}:",
                                    ),
                                    TextSpan(
                                      text: "${state.laps[i].seconds}.",
                                    ),
                                    TextSpan(
                                      text: state.laps[i].millseconds,
                                    ),
                                  ]))
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 0.3,
                              color: const Color.fromRGBO(115, 115, 115, 1),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.shower), label: '샤워부스'),
                BottomNavigationBarItem(icon: Icon(Icons.shower), ),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My'),
              ]
            ),
          );
        },
      ),
    );
  }

  _detailForm({required String title, double? contentToDouble, int? content}) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(color: Color.fromRGBO(195, 195, 195, 1)),
            ),
            if (content != null) ...[
              Text(
                (content).toString(),
              ),
            ],
            if (contentToDouble != null) ...[
              Text(
                contentToDouble == 0.0
                    ? "0"
                    : contentToDouble.toString().length > 8
                        ? (contentToDouble).toString().substring(0, 8)
                        : contentToDouble.toString(),
              ),
            ],
          ],
        ),
      ),
    );
  }

  GestureDetector _buttonForm({
    required Color color,
    required String content,
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        width: 100,
        height: 45,
        child: Center(
            child: Text(
          content,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
        )),
      ),
    );
  }

  SizedBox _timeForm({
    required String content,
    required double? width,
    required double fontSize,
  }) {
    return SizedBox(
      width: width,
      child: Center(
        child: Text(
          content,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}