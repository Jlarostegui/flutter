import 'dart:ffi';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void incrementar() => setState(() => counter++);
  void reducir() => setState(() => counter--);
  void resetear() => setState(() => counter = 0);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('CounterScreen'),
        ),
        elevation: 5.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Numero de clicks',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustonFloatingActions(
          funcionIncrementar: incrementar,
          funcionReducir: reducir,
          functionResetear: resetear),
    );
  }
}

class CustonFloatingActions extends StatelessWidget {
  final Function funcionIncrementar;
  final Function funcionReducir;
  final Function functionResetear;

  const CustonFloatingActions({
    Key? key,
    required this.funcionIncrementar,
    required this.funcionReducir,
    required this.functionResetear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => funcionIncrementar(),
          child: const Icon(Icons.exposure_plus_1),
        ),
        FloatingActionButton(
          onPressed: () => functionResetear(),
          child: const Icon(Icons.exposure_outlined),
        ),
        FloatingActionButton(
          onPressed: () => funcionReducir(),
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
      ],
    );
  }
}
