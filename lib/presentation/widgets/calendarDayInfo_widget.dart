import 'package:flutter/material.dart';
import 'package:beasavor/common/utils/app_color.dart';
import 'package:beasavor/common/utils/app_fonts.dart';

class CalendarDayInfo extends StatelessWidget {
  final DateTime selectedDate;
  final int showerMinutes;
  final int showerSeconds;
  final int targetMinutes;
  final int targetSeconds;

  const CalendarDayInfo({
    Key? key,
    required this.selectedDate,
    required this.showerMinutes,
    required this.showerSeconds,
    required this.targetMinutes,
    required this.targetSeconds,
  }) : super(key: key);

  String _formatDay(int day) => day < 10 ? '0$day' : '$day';

  String _getWeekdayAbbreviation(int weekday) {
    const weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return weekdays[weekday - 1];
  }

  String _getMonthName(int month) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return months[month - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 402,
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _formatDay(selectedDate.day),
                    style: AppFonts.bold.copyWith(fontSize: 40, color: AppColors.black),
                  ),
                  Text(
                    _getWeekdayAbbreviation(selectedDate.weekday),
                    style: AppFonts.bold.copyWith(fontSize: 16, color: AppColors.black),
                  ),
                ],
              ),
              Text(
                _getMonthName(selectedDate.month),
                style: AppFonts.bold.copyWith(fontSize: 24, color: AppColors.gray70),
              ),
              SizedBox(width: 24),
            ],
          ),
        ),
        SizedBox(height: 28),
        _buildSummaryInfo(Icons.bathtub_outlined, '나의 샤워시간', showerMinutes, showerSeconds),
        SizedBox(height: 12),
        _buildSummaryInfo(Icons.timer_outlined, '목표 샤워시간', targetMinutes, targetSeconds),
      ],
    );
  }

  Widget _buildSummaryInfo(IconData icon, String label, int minutes, int seconds) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(icon, size: 24, color: AppColors.gray70),
            SizedBox(width: 16),
            Text(label, style: AppFonts.semibold.copyWith(fontSize: 16, color: AppColors.gray70)),
          ],
        ),
        Row(
          children: [
            Text('$minutes', style: AppFonts.bold.copyWith(fontSize: 20, color: AppColors.gray70)),
            SizedBox(width: 4),
            Text('min', style: AppFonts.medium.copyWith(fontSize: 16, color: AppColors.gray70)),
            SizedBox(width: 4),
            Text('$seconds', style: AppFonts.bold.copyWith(fontSize: 20, color: AppColors.gray70)),
            SizedBox(width: 4),
            Text('sec', style: AppFonts.medium.copyWith(fontSize: 16, color: AppColors.gray70)),
          ],
        ),
      ],
    );
  }
}
