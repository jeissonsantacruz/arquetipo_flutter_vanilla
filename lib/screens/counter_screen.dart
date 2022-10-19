import 'package:flutter/material.dart';

/// Clase que contiene la UI del contador
class CounterScreen extends StatefulWidget {
  const CounterScreen({
    super.key,
    required this.title,
    required this.counter,
    required this.decrement,
    required this.increment,
  });

  final String title;
  final int counter;
  final VoidCallback increment;
  final VoidCallback decrement;

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador',
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: widget.decrement,
            tooltip: 'Decrement',
            child: const Icon(Icons.delete),
          ),
          FloatingActionButton(
            onPressed: widget.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
