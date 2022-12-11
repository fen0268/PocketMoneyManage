import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

Widget scheduleViewHeaderBuilder(
  BuildContext buildContext,
  ScheduleViewMonthHeaderDetails details,
) {
  return Stack(
    children: [
      Container(
        color: sfCalendarBackgroundColor(details.date.month),
      ),
      Positioned(
        child: Text('${details.date.year}年 ${details.date.month}月'),
      ),
    ],
  );
}
/// 月ごとのカラーを返す
Color sfCalendarBackgroundColor(int month) {
  if (month == 1) {
    return Colors.green;
  } else if (month == 2) {
    return Colors.blue;
  } else if (month == 3) {
    return Colors.blue;
  } else if (month == 4) {
    return Colors.blue;
  } else if (month == 5) {
    return Colors.blue;
  } else if (month == 6) {
    return Colors.blue;
  } else if (month == 7) {
    return Colors.blue;
  } else if (month == 8) {
    return Colors.blue;
  } else if (month == 9) {
    return Colors.blue;
  } else if (month == 10) {
    return Colors.blue;
  } else if (month == 11) {
    return Colors.blue;
  } else if (month == 12) {
    return Colors.blue;
  } else {
    return const Color(0xFFFFFFFF);
  }
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
