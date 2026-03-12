import 'package:flutter/material.dart';
import 'package:dogmine_app/presentation/screens/home_screen.dart';
import 'package:dogmine_app/presentation/screens/history_screen.dart';
import 'package:dogmine_app/presentation/screens/camera_screen.dart';
import 'package:dogmine_app/presentation/screens/login_screen.dart';
void main() {
  runApp(DogmineApp());
}

class DogmineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/home',
  outes: {
  '/home': (context) => HomeScreen(),
  '/history': (context) => HistoryScreen(),
  '/camera': (context) => CameraScreen(),
  '/login': (context) => LoginScreen(),
  '/details': (context) => DetailsScreen(),
},
  title: 'Dogmine',
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
);
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/details');
          },
          child: Text('Go to Details'),
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Text('Details Screen'),
      ),
    );
  }
}
