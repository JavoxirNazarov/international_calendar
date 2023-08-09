import 'package:flutter/material.dart';
import 'package:calendar/presentation/page/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calendar',
      theme: ThemeData(brightness: Brightness.dark),
      home: HomePage(),
    );
  }
}
