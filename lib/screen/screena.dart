import 'package:flutter/material.dart';
import 'package:flutter_chapter/screen/screenb.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  String _name = '';

  int? _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(height: 24),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Type your name',
              ),
              keyboardType: TextInputType.name,
              onChanged: _setName,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _openScreenB(context),
              child: const Text('Go to next screen'),
            ),

            // Result from Screen B will be shown here
            if (_result != null) ...[
              const SizedBox(height: 40),
              Text('The result is $_result'),
            ]
          ],
        ),
      ),
    );
  }

  void _setName(String text) {
    _name = text;
  }

  Future<void> _openScreenB(BuildContext context) async {
    var route = MaterialPageRoute(
      builder: (context) => ScreenB(name: _name),
    );
    var result = await Navigator.push(context, route);
    if (result != null) {
      setState(() {
        _result = result;
      });
    }
  }
}
