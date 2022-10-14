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
  void initState() {
    super.initState();
    print('Init State');
  }

  @override
  void dispose() {
    print('Dispose');
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CounterScreen oldWidget) {
    print('did Update');

    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('did change');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Yo',
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
