import 'package:flutter/material.dart';

import 'screen/counter_screen.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Themed Counter',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.orange,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: CounterScreen(),
    );
  }
}