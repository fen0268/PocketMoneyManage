import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';
import 'objectbox.g.dart';

late Store store;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  store = await openStore();
  await initializeDateFormatting();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
