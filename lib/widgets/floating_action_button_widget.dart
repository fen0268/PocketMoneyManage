import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../pages/member_add_page.dart';
import '../pages/task_add_page.dart';

class FloatingActionButtonWidget extends ConsumerWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SpeedDial(
      icon: Icons.share,
      backgroundColor: Colors.pink.shade400,
      children: [
        SpeedDialChild(
          child: Icon(
            Icons.task,
            color: Colors.pink.shade400,
          ),
          label: '家事を追加',
          backgroundColor: Colors.grey.shade300,
          onTap: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) => const TaskAddPage(),
              ),
            );
          },
        ),
        SpeedDialChild(
          child: Icon(
            Icons.people_outlined,
            color: Colors.pink.shade400,
          ),
          label: 'メンバーを追加',
          backgroundColor: Colors.grey.shade300,
          onTap: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) => const MemberAddPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
