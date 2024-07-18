import 'package:flutter/material.dart';
import 'package:flutter_advanced/packages/flutter_hooks_demo.dart';

import 'core/theme/dark_theme.dart';

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
      home: const Scaffold(
        body: FlutterHooksDemo(),
      ),
    );
  }
}
