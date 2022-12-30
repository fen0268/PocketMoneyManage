import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import '../models/task/task.dart';

final taskNotifierProvider = StateNotifierProvider<TaskNotifier, Task>(
  (ref) => TaskNotifier(),
);

class TaskNotifier extends StateNotifier<Task> {
  TaskNotifier() : super(Task(id: 0));
  final taskBox = store.box<Task>();
  final titleController = TextEditingController();
  final priceController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  void taskAdd(DateTime doingAt) {
    final price = int.parse(priceController.text);
    final fetchTaskBoxId =
        taskBox.getAll().isEmpty ? 0 : taskBox.getAll().last.id;

    final newTask = Task(
      id: fetchTaskBoxId + 1,
      title: titleController.text,
      price: price,
      doingAt: doingAt,
      isDone: false,
    );

    state = state.copyWith(
      id: newTask.id,
      title: newTask.title,
      price: price,
      createdAt: DateTime.now(),
    );
  }
}
