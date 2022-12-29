import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/floating_action_button_widget.dart';
import '../widgets/sf_calendar/syncfusion_calendar_widget.dart';
import '../widgets/table_calendar_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push<void>(
                  MaterialPageRoute(
                    builder: (context) => const TableCalendarWidget(),
                  ),
                );
              },
              icon: const Icon(Icons.abc),
            ),
          ],
        ),
        body: const SyncfusionCalendarWidget(),
        floatingActionButton: const FloatingActionButtonWidget(),
      ),
    );
  }
}
