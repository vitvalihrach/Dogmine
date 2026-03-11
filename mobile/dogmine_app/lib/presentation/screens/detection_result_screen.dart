import 'package:flutter/material.dart';

class DetectionResultScreen extends StatelessWidget {
  final String result;

  DetectionResultScreen({required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detection Result'),
      ),
      body: Center(
        child: Text(
          'AI Detection Result: \n$result',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}