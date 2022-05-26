import 'package:flutter/material.dart';
import 'package:flutter_chapter/screen/screena.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chapter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScreenA(),
    );
  }
}
