import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../features/date_controller.dart';
import '../features/task_controller.dart';
import '../pages/member_add_page.dart';
import '../pages/member_management_page.dart';
import '../pages/task_add_page.dart';

class FloatingActionButtonWidget extends ConsumerWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final dateNotifier = ref.watch(dateNotifierProvider.notifier);
    final taskNotifier = ref.watch(taskNotifierProvider.notifier);
    return SpeedDial(
      foregroundColor: Colors.grey.shade300,
      backgroundColor: Colors.pink.shade400,
      animatedIcon: AnimatedIcons.menu_close,
      children: [
        SpeedDialChild(
          child: Icon(
            Icons.task,
            color: Colors.pink.shade400,
          ),
          label: '家事を追加',
          backgroundColor: Colors.grey.shade300,
          onTap: () {
            dateNotifier.initDateTime();
            taskNotifier
              ..isSelectedMember = false
              ..assigneeMember = null;
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              builder: (context) => SizedBox(
                height: deviceHeight * 0.90,
                child: const TaskAddPage(),
              ),
            );
          },
        ),
        SpeedDialChild(
          child: Icon(
            Icons.group_add,
            color: Colors.pink.shade400,
          ),
          label: 'メンバーを追加',
          backgroundColor: Colors.grey.shade300,
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              builder: (context) => SizedBox(
                height: deviceHeight * 0.90,
                child: const MemberAddPage(),
              ),
            );
          },
        ),
        SpeedDialChild(
          child: Icon(
            Icons.people_outlined,
            color: Colors.pink.shade400,
          ),
          label: 'メンバーを管理',
          backgroundColor: Colors.grey.shade300,
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              builder: (context) => SizedBox(
                height: deviceHeight * 0.90,
                child: const MemberManagementPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
