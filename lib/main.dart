import 'package:flutter/material.dart';

import 'mybottombar/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '영화 나라',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: BottomBar(),
    );
  }
}
