import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

Widget scheduleViewHeaderBuilder(
  BuildContext buildContext,
  ScheduleViewMonthHeaderDetails details,
) {
  final monthName = getMonthName(details.date.month);
  CalendarController calendarController;
  return Stack(
    children: [
      GestureDetector(
        onDoubleTap: () {
        },
        child: Image(
          image: const AssetImage('assets/January.jpg'),
          fit: BoxFit.cover,
          width: details.bounds.width,
          height: details.bounds.height,
        ),
      ),
      Positioned(
        left: details.bounds.width * 0.05,
        top: details.bounds.height * 0.05,
        child: Text(
          '${details.date.year}年 ${details.date.month}月',
          style: GoogleFonts.yuseiMagic(fontSize: 20),
        ),
      ),
    ],
  );
}

/// 画像を使うときに使う
String getMonthName(int month) {
  if (month == 01) {
    return 'January';
  } else if (month == 02) {
    return 'February';
  } else if (month == 03) {
    return 'March';
  } else if (month == 04) {
    return 'April';
  } else if (month == 05) {
    return 'May';
  } else if (month == 06) {
    return 'June';
  } else if (month == 07) {
    return 'July';
  } else if (month == 08) {
    return 'August';
  } else if (month == 09) {
    return 'September';
  } else if (month == 10) {
    return 'October';
  } else if (month == 11) {
    return 'November';
  } else {
    return 'December';
  }
}
