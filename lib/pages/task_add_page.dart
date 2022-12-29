import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../features/date_controller.dart';

class TaskAddPage extends ConsumerWidget {
  const TaskAddPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(dateNotifierProvider);
    final notifier = ref.watch(dateNotifierProvider.notifier);
    final deviceHeight = MediaQuery.of(context).size.height;
    final outputFormat = DateFormat('yyyy年 M月 d日');

    return Column(
      children: [
        SizedBox(
          height: deviceHeight * 0.07,
          child: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
            ),
            actions: [
              Container(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 5,
                  right: 10,
                  bottom: 8,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade300,
                  ),
                  child: const Text('追加'),
                ),
              ),
            ],
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10, left: 50, right: 5),
          child: TextFormField(
            style: const TextStyle(fontSize: 25),
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: '家事を追加',
              hintStyle: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.only(top: 5, left: 15, right: 5),
          child: Expanded(
            child: ExpansionTile(
              leading: Icon(
                Icons.schedule,
                color: Colors.grey.shade500,
              ),
              title: Text(outputFormat.format(data.selectedDate!)),
              children: [
                TableCalendar<void>(
                  focusedDay: data.selectedDate!,
                  firstDay: DateTime(2020),
                  lastDay: DateTime(2120),
                  headerVisible: false,
                  onDaySelected: (selectedDay, focusedDay) {
                    notifier.selectDate(selectedDay);
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
