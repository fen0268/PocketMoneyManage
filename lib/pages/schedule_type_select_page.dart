import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScheduleTypeSelectPage extends ConsumerWidget {
  const ScheduleTypeSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 35),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('繰り返し'),
            ),
            ListTile(
              title: Text('繰り返さない'),
            ),
            ListTile(
              title: Text('毎日'),
            ),
            ListTile(
              title: Text('毎週'),
            ),
            ListTile(
              title: Text('毎月'),
            ),
            ListTile(
              title: Text('毎年'),
            ),
            ListTile(
              title: Text('カスタム'),
            ),
          ],
        ),
      ),
    );
  }
}
