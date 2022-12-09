import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class SyncfusionCalendarWidget extends ConsumerWidget {
  const SyncfusionCalendarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Localizations.override(
        context: context,
        locale: const Locale('ja'),
        child: SfCalendar(
          view: CalendarView.schedule,
        ),
      ),
    );
  }
}
