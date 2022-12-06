import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DrawerListViewWidget extends ConsumerWidget {
  const DrawerListViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: const [Text('data')],
    );
  }
}
