import 'package:flutter/material.dart';
import 'package:vanilla/inherited_widget.dart';
import 'package:vanilla/screens/counter_screen.dart';

void main() {
  runApp(const VanillaApp());
}

/// Clase padre vanilla App
class VanillaApp extends StatefulWidget {
  const VanillaApp({super.key});

  @override
  State<VanillaApp> createState() => _VanillaAppState();
}

class _VanillaAppState extends State<VanillaApp> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return InheritedCounter(
      incrementCounter: incrementCounter,
      decrementCounter: decrementCounter,
      counter: _counter,
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const CounterScreen()),
    );
  }

  /// Funcion para aumentar el contador
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  /// Funcion para decrementar el contador
  void decrementCounter() {
    setState(() {
      _counter--;
    });
  }
}
