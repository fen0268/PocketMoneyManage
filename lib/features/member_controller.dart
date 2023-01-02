import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import '../models/member/member.dart';

final memberNotifierProvider =
    StateNotifierProvider.autoDispose<MemberNotifier, Member>(
  (ref) => MemberNotifier(),
);

class MemberNotifier extends StateNotifier<Member> {
  MemberNotifier() : super(Member(id: 0));
  final memberBox = store.box<Member>();
  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  void memberAdd() {
    final fetchMemberBoxId =
        memberBox.getAll().isEmpty ? 0 : memberBox.getAll().last.id;

    final newMember =
        Member(id: fetchMemberBoxId + 1, name: nameController.text);

    final now = DateTime.now();

    state = state.copyWith(
      id: newMember.id,
      name: newMember.name,
      income: 0,
      createdAt: DateTime(now.year, now.month, now.day),
    );
    memberBox.put(state);

    /// メンバーを追加したときに nameController の値を削除
    /// ビルドしたときにアサーションエラーが発生
    nameController.clear();
  }

  void removeUser(int id) {
    state = state.copyWith(id: id);
    memberBox.remove(state.id);
  }
}
