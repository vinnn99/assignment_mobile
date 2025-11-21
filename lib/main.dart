import 'package:flutter/material.dart';
import 'package:assignment_mobile/counter_model.dart';
import 'package:assignment_mobile/pages/home_page.dart';
import 'package:assignment_mobile/pages/increment_page.dart';
import 'package:assignment_mobile/pages/decrement_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterModel _model = CounterModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Counter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(model: _model),
        '/increment': (context) => IncrementPage(model: _model),
        '/decrement': (context) => DecrementPage(model: _model),
      },
    );
  }
}
