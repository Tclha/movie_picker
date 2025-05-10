import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:movie_picker/stateless.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  static const maxCount = 3;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter > maxCount) {
        _counter = 0;
      }
      log("COUNTER: $_counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: _incrementCounter,
        behavior: HitTestBehavior.opaque, // Ensures taps on empty space are detected
        child: Center(
          child: StatelessTest(
            counter: _counter,
            maxCount: maxCount,
          ),
        ),
      ),
    );
  }
}
