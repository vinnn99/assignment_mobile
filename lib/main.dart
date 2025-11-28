import 'package:flutter/material.dart';
import 'package:assignment_mobile/bloc/counter_bloc.dart';
import 'package:assignment_mobile/pages/home_page.dart';
import 'package:assignment_mobile/pages/increment_page.dart';
import 'package:assignment_mobile/pages/decrement_page.dart';
import 'package:assignment_mobile/pages/multiplication_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterBloc _bloc = CounterBloc();

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
        '/': (context) => HomePage(bloc: _bloc),
        '/add': (context) => IncrementPage(bloc: _bloc),
        '/subtract': (context) => DecrementPage(bloc: _bloc),
        '/multiply': (context) => MultiplicationPage(bloc: _bloc),
      },
    );
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}
