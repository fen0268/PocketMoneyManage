import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/member_controller.dart';
import '../main.dart';
import '../models/member/member.dart';

class MemberAddPage extends ConsumerWidget {
  const MemberAddPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// state を監視
    final data = ref.watch(memberNotifierProvider);

    /// userController を監視
    final notifier = ref.watch(memberNotifierProvider.notifier);

    /// Box を取得
    final userBox = store.box<Member>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('メンバー 追加'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: TextFormField(
                controller: notifier.nameController,
                decoration: const InputDecoration(hintText: '名前'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                notifier.memberAdd();

                /// pop up 設置 検討
                Navigator.of(context).pop();
              },
              child: const Text('メンバー 追加'),
            ),
          ],
        ),
      ),
    );
  }
}
