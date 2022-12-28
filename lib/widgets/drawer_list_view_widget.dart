import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pages/member_add_page.dart';
import '../pages/work_add_page.dart';

class DrawerListViewWidget extends ConsumerWidget {
  const DrawerListViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceHeight = MediaQuery.of(context).size.height;
    // final deviceWidth = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        const DrawerHeader(child: Text('data')),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) => const WorkAddPage(),
              ),
            );
          },
          child: Container(
            color: Colors.red,
            height: deviceHeight * 0.1,
            child: const Text('お手伝いの追加'),
          ),
        ),
        Container(
          color: Colors.blue,
          height: deviceHeight * 0.1,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push<void>(
                MaterialPageRoute(
                  builder: (context) => const MemberAddPage(),
                ),
              );
            },
            child: const Text('メンバーの追加'),
          ),
        ),
      ],
    );
  }
}
