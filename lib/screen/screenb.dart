import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  final String name;

  /// Parameter passed from screen A is [name]
  const ScreenB({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(height: 24),
            Text('Hello, $name\n\nPlease pick a number below:'),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('1'),
              onTap: () => _closeScreen(context, 1),
            ),
            ListTile(
              title: const Text('2'),
              onTap: () => _closeScreen(context, 2),
            ),
          ],
        ),
      ),
    );
  }

  void _closeScreen(BuildContext context, int result) {
    Navigator.of(context).pop(result);
  }
}
