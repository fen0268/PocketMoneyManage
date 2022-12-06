import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/drawer_list_view_widget.dart';
import '../widgets/home_calendar_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: const [HomeCalendarWidget()],
        ),
        drawer: Drawer(
          width: deviceWidth * 0.3,
          child: const DrawerListViewWidget(),
        ),
      ),
    );
  }
}
