import 'package:flutter/material.dart';

/// Clase padre que extiende de inherited widget para que sus hijos puedan acceder a sus metodos y parametros
class InheritedCounter extends InheritedWidget {
  const InheritedCounter({
    super.key,
    required Widget child,
    required this.incrementCounter,
    required this.decrementCounter,
    required this.counter,
  }) : super(child: child);

  final Function incrementCounter;
  final Function decrementCounter;
  final int counter;

  static InheritedCounter of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<InheritedCounter>()!;
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
