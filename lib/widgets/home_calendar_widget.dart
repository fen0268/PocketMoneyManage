import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeCalendarWidget extends ConsumerWidget {
  const HomeCalendarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: TableCalendar<DateTime>(
        firstDay: DateTime(2022),
        lastDay: DateTime(2100),
        focusedDay: DateTime.now(),
      ),
    );
  }
}
