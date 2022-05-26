import 'package:flutter/material.dart';
import 'package:flutter_chapter/screen/screena.dart';
import 'package:flutter_chapter/screen/screenb.dart';

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
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            switch (settings.name) {
              case '/screen-a':
                return const ScreenA();
              case '/screen-b':
                final name = settings.arguments as String;
                return ScreenB(name: name);
              default:
                return Container();
            }
          },
        );
      },
    );
  }
}
