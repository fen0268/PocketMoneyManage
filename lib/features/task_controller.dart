import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import '../models/member/member.dart';
import '../models/task/task.dart';
import '../utils/date_time_extension.dart';

final taskNotifierProvider = StateNotifierProvider<TaskNotifier, Task>(
  (ref) => TaskNotifier(),
);

class TaskNotifier extends StateNotifier<Task> {
  TaskNotifier() : super(Task(id: 0));
  final taskBox = store.box<Task>();
  final memberBox = store.box<Member>();
  final titleController = TextEditingController();
  final priceController = TextEditingController();
  bool isSelectedMember = false;
  Member? assigneeMember;

  @override
  void dispose() {
    titleController.dispose();
    priceController.dispose();
    isSelectedMember = false;
    super.dispose();
  }

  void taskAdd(DateTime doingAt) {
    final price = int.parse(priceController.text);
    final fetchTaskBoxId =
        taskBox.getAll().isEmpty ? 0 : taskBox.getAll().last.id;

    final dateTenYearDays = doingAt.tenYearLater.difference(doingAt).inDays;

    final newTask = Task(
      id: fetchTaskBoxId + 1,
      title: titleController.text,
      price: price,
      doingAt: doingAt,
    );

    state = state.copyWith(
      id: newTask.id,
      title: newTask.title,
      price: newTask.price,
      createdAt: DateTime.now(),
      doingAt: newTask.doingAt,
      isDone: false,
    );

    taskBox.put(state);
  }

  void selectMember(Member member) {
    isSelectedMember = true;
    state = state.copyWith(assigneeMemberId: member.id);
    assigneeMember = memberBox.get(member.id);
  }
}
