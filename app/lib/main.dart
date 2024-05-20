import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';

import 'screens/overview_ios.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? const CupertinoApp(
            title: 'vocab',
            theme: CupertinoThemeData(),
            home: OverviewPage(title: 'vocab'),
          )
        : const CupertinoApp(
            title: 'vocab',
            theme: CupertinoThemeData(),
            home: OverviewPage(title: 'vocab'),
          );
  }
}
