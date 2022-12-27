import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import '../models/member/member.dart';

class MemberNotifier extends StateNotifier<Member> {
  MemberNotifier() : super(Member(id: 0));
  final memberBox = store.box<Member>();

  void memberAdd(Member member) {
    memberBox.put(member);
  }
}
