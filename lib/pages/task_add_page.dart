import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../features/date_controller.dart';
import '../features/task_controller.dart';

class TaskAddPage extends ConsumerWidget {
  const TaskAddPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateData = ref.watch(dateNotifierProvider);
    final dateNotifier = ref.watch(dateNotifierProvider.notifier);
    final taskData = ref.watch(taskNotifierProvider);
    final taskNotifier = ref.watch(taskNotifierProvider.notifier);
    final deviceHeight = MediaQuery.of(context).size.height;
    final outputFormat = DateFormat('yyyy年 M月 d日');

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.zero,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close),
          ),
        ),
        actions: [
          /// 追加ボタン
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
                backgroundColor: Colors.pink.shade300,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 家事名
            Container(
              padding: const EdgeInsets.only(top: 5, left: 50, right: 5),
              child: TextFormField(
                style: const TextStyle(fontSize: 25),
                controller: taskNotifier.titleController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'お手伝い名',
                  labelStyle: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const Divider(),

            /// お小遣い
            Container(
              padding: const EdgeInsets.only(top: 5, left: 50, right: 5),
              child: TextFormField(
                style: const TextStyle(fontSize: 25),
                keyboardType: TextInputType.number,
                controller: taskNotifier.priceController,
                onChanged: (e) {
                  if (e == '0') {
                    return taskNotifier.priceController.clear();
                  }
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'お小遣い額',
                  labelStyle: TextStyle(
                    fontSize: 25,
                  ),
                  hintText: '0',
                  hintStyle: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const Divider(),

            /// 日付選択
            Container(
              padding: const EdgeInsets.only(top: 5, left: 15, right: 5),
              child: Expanded(
                child: Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    leading: Icon(
                      Icons.schedule,
                      color: Colors.grey.shade500,
                    ),
                    title: Text(
                      outputFormat.format(dateData.selectedDate!),
                    ),
                    children: [
                      TableCalendar<void>(
                        focusedDay: dateData.selectedDate!,
                        currentDay: dateData.selectedDate,
                        firstDay: DateTime(2020),
                        lastDay: DateTime(2120),
                        headerVisible: false,
                        onDaySelected: (selectedDay, focusedDay) {
                          dateNotifier.selectDate(selectedDay);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),

            /// 詳細オプション
            Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  '詳細オプション',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}