import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../features/theme_mode_provider.dart';
import '../../utils/syncfusion_calendar_month_name.dart';

class SyncfusionCalendarWidget extends ConsumerWidget {
  const SyncfusionCalendarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceHeight = MediaQuery.of(context).size.height;
    // final deviceWidth = MediaQuery.of(context).size.width;
    final calendarController = CalendarController();
    final themeMode = ref.watch(themeModeProvider.notifier);

    return SizedBox(
      height: deviceHeight,
      child: SfCalendar(
        view: CalendarView.schedule,
        controller: calendarController,
        headerHeight: 0,
        todayHighlightColor: const Color(0xFFD06292),

        /// scheduleViewMonthHeaderBuilder
        scheduleViewMonthHeaderBuilder: (buildContext, details) {
          final monthName = getMonthName(details.date.month);
          return Stack(
            children: [
              GestureDetector(
                onDoubleTap: () {
                  calendarController.displayDate = DateTime.now();
                },
                child: Image(
                  image: AssetImage('assets/$monthName.jpg'),
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
                  style: GoogleFonts.yuseiMagic(
                    fontSize: 20,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ],
          );
        },

        /// scheduleViewSettings
        scheduleViewSettings: ScheduleViewSettings(
          /// monthHeaderSettings
          monthHeaderSettings: MonthHeaderSettings(
            height: deviceHeight * 0.20,
            monthFormat: 'yyyy年 M月',
          ),

          /// weekHeaderSettings
          weekHeaderSettings: const WeekHeaderSettings(
            startDateFormat: 'M月 d日',
            endDateFormat: 'd日',
          ),

          /// dayHeaderSettings
          dayHeaderSettings: const DayHeaderSettings(
            /// todo 曜日を日本語に変更したい
            dayFormat: '',
          ),
        ),
      ),
    );
  }
}
