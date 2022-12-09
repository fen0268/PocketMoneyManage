import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/drawer_list_view_widget.dart';
import '../widgets/syncfusion_calendar_widget.dart';
import '../widgets/table_calendar_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push<dynamic>(
                  MaterialPageRoute<dynamic>(
                    builder: (context) => const TableCalendarWidget(),
                  ),
                );
              },
              icon: const Icon(Icons.abc),
            )
          ],
        ),
        body: Column(
          children: const [
            SyncfusionCalendarWidget(),
          ],
        ),
        drawer: Drawer(
          width: deviceWidth * 0.4,
          child: const DrawerListViewWidget(),
        ),
      ),
    );
  }
}
