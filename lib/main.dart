import 'package:flutter/material.dart';
import 'package:transform_guard/home_page.dart';
import 'package:transform_guard/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 211, 204, 204),
      ),
      home: HomeScreen(),
    );
  }
}
