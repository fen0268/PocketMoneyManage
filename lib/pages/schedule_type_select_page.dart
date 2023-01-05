import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/schedule_num_controller.dart';

class ScheduleTypeSelectPage extends ConsumerWidget {
  const ScheduleTypeSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheduleDate = ref.watch(scheduleNumNotifierProvider);
    final scheduleNotifier = ref.watch(scheduleNumNotifierProvider.notifier);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 35),
        child: ListView(
          children: [
            const ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('繰り返し'),
            ),
            ListTile(
              onTap: () {
                scheduleNotifier.scheduleNumChange(0);
                Navigator.of(context).pop();
              },
              title: const Text('繰り返さない'),
            ),
            ListTile(
              onTap: () {
                scheduleNotifier.scheduleNumChange(1);
                Navigator.of(context).pop();
              },
              title: const Text('毎日'),
            ),
            ListTile(
              onTap: () {
                scheduleNotifier.scheduleNumChange(2);
                Navigator.of(context).pop();
              },
              title: const Text('毎週'),
            ),
            ListTile(
              onTap: () {
                scheduleNotifier.scheduleNumChange(3);
                Navigator.of(context).pop();
              },
              title: const Text('毎月'),
            ),
            ListTile(
              onTap: () {
                scheduleNotifier.scheduleNumChange(4);
                Navigator.of(context).pop();
              },
              title: const Text('毎年'),
            ),
            ListTile(
              onTap: () {
                scheduleNotifier.scheduleNumChange(5);
                Navigator.of(context).pop();
              },
              title: const Text('カスタム'),
            ),
          ],
        ),
      ),
    );
  }
}
