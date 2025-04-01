import 'dart:async';

import 'package:beasavor/common/utils/app_fonts.dart';
import 'package:beasavor/presentation/screens/water_screen.dart';
import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int seconds = 0, minutes = 0;
  String digitSeconds = "00", digitMinutes = "00";
  Timer? timer;
  bool started = false;
  List laps = [];

  void stop() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  void reset() {
    timer!.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;

      digitMinutes = "00";
      digitSeconds = "00";

      started = false;
    });
  }

  void add_laps() {
    String lap = "$digitMinutes : $digitSeconds";
    setState(() {
      laps.add(lap);
    });
  }

  void start() {
    started = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int localSeconds = seconds + 1;
      int localMinutes = minutes;

      if (localSeconds > 59) {
        localMinutes++;
        localSeconds = 0;
      }

      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;

        digitSeconds = (seconds >= 10) ? "$seconds" : "0$seconds";
        digitMinutes = (minutes >= 10) ? "$minutes" : "0$minutes";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blue10,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const WaterScreen())),
                      child: Container(
                        width: 72,
                        height: 36,
                        child: Row(
                          children: [
                            Icon(
                              Icons.water_drop,
                              size: 24,
                              color: AppColors.blue100,
                            ),
                            Text(
                              '188', //required
                              style: AppFonts.bold.copyWith(
                                  fontSize: 16, color: AppColors.blue100),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    '20 : 00',
                    style: AppFonts.light
                        .copyWith(color: AppColors.gray50, fontSize: 30),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    '$digitMinutes : $digitSeconds',
                    style: AppFonts.special
                        .copyWith(color: AppColors.gray50, fontSize: 60),
                  ),
                ),
              ),
              Container(
                height: 400,
                width: 360,
                decoration: BoxDecoration(
                    color: AppColors.blue20,
                    borderRadius: BorderRadius.circular(20)),
                child: ListView.builder(
                  itemCount: laps.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lap n°${index + 1}",
                            style: AppFonts.regular
                                .copyWith(color: AppColors.red10, fontSize: 16),
                          ),
                          Text(
                            "${laps[index]}",
                            style: AppFonts.regular
                                .copyWith(color: AppColors.red10, fontSize: 16),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: RawMaterialButton(
                    onPressed: () {
                      (!started) ? start() : stop();
                    },
                    fillColor:
                        (!started) ? AppColors.blue100 : AppColors.red100,
                    shape: const StadiumBorder(),
                    child: Text(
                      (!started) ? 'BAS TIME!' : 'ALL DONE!',
                      style: AppFonts.special
                          .copyWith(color: AppColors.white, fontSize: 30),
                    ),
                  )),
                  Container(
                    child: RawMaterialButton(
                      onPressed: () {
                        add_laps();
                        reset();
                      },
                      fillColor: AppColors.gray40,
                      shape: const CircleBorder(),
                      child: Text(
                        (!started) ? "END" : "GOOD",
                        style: AppFonts.special
                            .copyWith(color: AppColors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
