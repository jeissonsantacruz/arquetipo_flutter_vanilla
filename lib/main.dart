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
  @override
  void initState() {
    super.initState();
    print('Init State P');
  }

  @override
  void dispose() {
    print('Dispose P');
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant VanillaApp oldWidget) {
    print('did update P');

    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('did change P');
    super.didChangeDependencies();
  }

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print('build P');
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
