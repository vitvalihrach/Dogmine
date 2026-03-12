import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final List<Map<String, dynamic>> detectionHistory = [
    {
      'id': 1,
      'timestamp': '2026-03-11 14:30',
      'result': 'Poop Detected',
      'confidence': 0.95,
      'location': 'Park',
    },
    {
      'id': 2,
      'timestamp': '2026-03-11 10:15',
      'result': 'No Poop',
      'confidence': 0.87,
      'location': 'Street',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detection History')),
      body: ListView.builder(
        itemCount: detectionHistory.length,
        itemBuilder: (context, index) {
          final detection = detectionHistory[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(detection['result']),
              subtitle: Text('${detection['timestamp']} - ${detection['location']}'),
              trailing: Text('${(detection['confidence'] * 100).toStringAsFixed(0)}%'),
            ),
          );
        },
      ),
    );
  }
}
