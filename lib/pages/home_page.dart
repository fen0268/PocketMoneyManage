import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              child: TableCalendar<DateTime>(
                firstDay: DateTime(2022, 1),
                lastDay: DateTime(2100),
                focusedDay: DateTime.now(),
              ),
            )
          ],
        ),
        drawer: Drawer(
          width: deviceWidth * 0.3,
          child: ListView(
            children: const [
              DrawerHeader(
                child: Text('abcde'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
