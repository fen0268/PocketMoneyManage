import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class SyncfusionCalendarWidget extends ConsumerWidget {
  const SyncfusionCalendarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Localizations.override(
        context: context,
        locale: const Locale('ja'),
        child: SfCalendar(
          view: CalendarView.schedule,
          headerDateFormat: 'yyyy年 MM月',
          scheduleViewSettings: ScheduleViewSettings(
            /// MonthHeaderSettings
            monthHeaderSettings: MonthHeaderSettings(
              height: deviceHeight * 0.1,
              monthFormat: 'yyyy年 MM月',
            ),

            /// WeekHeaderSettings
            weekHeaderSettings: const WeekHeaderSettings(
              startDateFormat: 'MM月 dd日',
              endDateFormat: 'dd日',
            ),
          ),
        ),
      ),
    );
  }
}
