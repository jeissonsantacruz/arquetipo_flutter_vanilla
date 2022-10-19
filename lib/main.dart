import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterScreen(
          title: 'Flutter Demo Home Page',
          counter: _counter,
          increment: () {
            incrementCounter();
          },
          decrement: () {
            decrementCounter();
          }),
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
