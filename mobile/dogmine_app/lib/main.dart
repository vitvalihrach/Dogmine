import 'package:flutter/material.dart';

import 'package:dogmine_app/presentation/screens/camera_screen.dart';
import 'package:dogmine_app/presentation/screens/history_screen.dart';
import 'package:dogmine_app/presentation/screens/home_screen.dart';
import 'package:dogmine_app/presentation/screens/login_screen.dart';

void main() {
  runApp(const DogmineApp());
}

class DogmineApp extends StatelessWidget {
  const DogmineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dogmine',
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        '/home': (context) => const HomeScreen(),
        '/history': (context) => const HistoryScreen(),
        '/camera': (context) => const CameraScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
