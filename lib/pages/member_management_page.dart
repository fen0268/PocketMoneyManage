import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import '../models/member/member.dart';

class MemberManagementPage extends ConsumerWidget {
  const MemberManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberBox = store.box<Member>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: memberBox
              .getAll()
              .map(
                (e) => ListTile(
                  onTap: () {},
                  title: Text(e.name),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
