import 'package:beasavor/presentation/widgets/CalendarDayInfo_widget.dart';
import 'package:beasavor/presentation/widgets/showerAverage_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, List<String>> _events = {}; // 날짜별 데이터 저장

  @override
  void initState() {
    super.initState();

    // 예제 데이터 추가
    _events = {
      DateTime(2024, 3, 1): [],
      DateTime(2024, 3, 5): [],
      DateTime(2024, 3, 9): [],
    };
  }

  List<String> _getEventsForDay(DateTime day) {
    return _events[DateTime(day.year, day.month, day.day)] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          _selectedDay == null ? AppColors.white : AppColors.blue10,
      appBar: AppBar(
        foregroundColor: AppColors.blue50,
        backgroundColor: AppColors.white,
        title: Text(
          '캘린더',
          style: AppFonts.bold.copyWith(fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ //캘린더UI
            Container(
              height: 428,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.gray50,
                    spreadRadius: 0,
                    blurRadius: 0.5,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                child: TableCalendar(
                  focusedDay: _focusedDay,
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  calendarFormat: CalendarFormat.month,
                  selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      if (_selectedDay != null && isSameDay(_selectedDay, selectedDay)) {
                        _selectedDay = null;
                      } else {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      }
                    });
                  },
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: AppColors.blue50,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: AppColors.blue100,
                      shape: BoxShape.circle,
                    ),
                  ),
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                      titleTextStyle: AppFonts.bold.copyWith(fontSize: 18),
                      leftChevronIcon: Icon(
                        Icons.chevron_left,
                        color: AppColors.blue50,
                        size: 24,
                      ),
                      rightChevronIcon: Icon(
                        Icons.chevron_right,
                        color: AppColors.blue50,
                        size: 24,
                      )),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle:
                        AppFonts.bold.copyWith(color: AppColors.gray50),
                    weekendStyle:
                        AppFonts.bold.copyWith(color: AppColors.blue50),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // 기본 평균 샤워 시간 UI (선택된 날짜 없을 때)
            if (_selectedDay == null) ...[
              ShowerAverageInfo(title: "3월 평균", time: "15 : 01"),
              ShowerAverageInfo(title: "이번주 평균", time: "18 : 32"),
              ShowerAverageInfo(title: "3일 평균", time: "55 : 55"),
            ],

            if (_selectedDay != null)
              CalendarDayInfo(
                selectedDate: _selectedDay!,
                showerMinutes: 18,
                showerSeconds: 11,
                targetMinutes: 20,
                targetSeconds: 00, // 실제 데이터 연동 필요
              ),
          ],
        ),
      ),
    );
  }
}
