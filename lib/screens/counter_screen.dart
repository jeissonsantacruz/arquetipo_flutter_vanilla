import 'package:flutter/material.dart';
import 'package:vanilla/inherited_widget.dart';

/// Clase que contiene la UI del contador
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador',
            ),
            Text(
              '${InheritedCounter.of(context).counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {});
              InheritedCounter.of(context).decrementCounter();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.delete),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {});
              InheritedCounter.of(context).incrementCounter();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
