import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarWidget extends ConsumerWidget {
  const TableCalendarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: TableCalendar<void>(
          firstDay: DateTime(2022),
          lastDay: DateTime(2100),
          focusedDay: DateTime.now(),
          headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
          ),
          locale: 'ja',
        ),
      ),
    );
  }
}
