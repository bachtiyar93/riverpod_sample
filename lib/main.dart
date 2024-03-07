import 'package:apphelper/helperwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/UI/Base.dart';
import 'package:riverpod_example/UI/Greetings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: appRootTree(
          title: 'Sample Riverpod',
          themeMode: ThemeMode.light,
          initPage: Main.base,
          routes: {
            Main.base: (_)=> Base(),
            Main.greetings:(_)=> Greeting(),
          }),
    );
  }
}

class Main {
  static const base = '/';
  static const greetings='/greetings';
}