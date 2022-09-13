import 'package:flutter/material.dart';
import 'package:tres_en_raya/src/homePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3 en raya',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('3 en raya'),
        ),
        body: HomePage(),
      ),
    );
  }
}