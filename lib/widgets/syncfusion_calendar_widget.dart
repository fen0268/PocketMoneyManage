import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../utils/syncfusion_calendar_month_design.dart';

class SyncfusionCalendarWidget extends ConsumerWidget {
  const SyncfusionCalendarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight,
      child: Localizations.override(
        context: context,
        locale: const Locale('ja'),
        child: SfCalendar(
          view: CalendarView.schedule,
          headerHeight: 0,
          scheduleViewMonthHeaderBuilder: scheduleViewHeaderBuilder,
          scheduleViewSettings: ScheduleViewSettings(
            /// MonthHeaderSettings
            monthHeaderSettings: MonthHeaderSettings(
              height: deviceHeight * 0.20,
              monthFormat: 'yyyy年 M月',
            ),

            /// WeekHeaderSettings
            weekHeaderSettings: const WeekHeaderSettings(
              startDateFormat: 'M月 d日',
              endDateFormat: 'd日',
            ),
          ),
        ),
      ),
    );
  }
}
