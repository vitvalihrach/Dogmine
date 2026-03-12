import 'package:flutter/material.dart';

import 'package:dogmine_app/presentation/screens/camera_screen.dart';
import 'package:dogmine_app/presentation/screens/history_screen.dart';
import 'package:dogmine_app/presentation/screens/home_screen.dart';
import 'package:dogmine_app/presentation/screens/login_screen.dart';

void main() {
  runApp(DogmineApp());
}

class DogmineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dogmine',
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        '/history': (context) => HistoryScreen(),
        '/camera': (context) => CameraScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
