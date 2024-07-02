import 'package:flutter/material.dart';

import 'core/theme/dark_theme.dart';
import 'packages/flutter_slidable_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme(),
      themeMode: ThemeMode.dark,
      home: const FlutterSlidableDemo(),
    );
  }
}
