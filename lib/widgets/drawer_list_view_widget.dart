import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DrawerListViewWidget extends ConsumerWidget {
  const DrawerListViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        const DrawerHeader(child: Text('data')),
        Container(
          color: Colors.red,
          height: deviceHeight * 0.1,
          child: const Text('data'),
        ),
        Container(
          color: Colors.blue,
          height: deviceHeight * 0.1,
          child: const Text('data'),
        ),
      ],
    );
  }
}
