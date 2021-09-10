import 'package:flutter/material.dart';

import 'package:qian/views/app.dart';
import 'package:qian/views/settings.dart';
import 'package:qian/views/book.dart';
import 'package:qian/views/book_setting.dart';

import 'package:qian/views/counter_page.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      title: 'Qian',
      initialRoute: '/',
      routes: {
        '/': (context) => App(),
        '/settings': (context) => Settings(),
        '/book': (context) => Book(),
        '/bookSetting': (context) => BookSetting(),
        '/counter': (context) => CounterPage(),
      },
    );
  }
}
