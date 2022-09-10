import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int angka = 0;

  @override
  Widget build(BuildContext context) {
    print('dicetak');
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
          child: Column(
        children: [
          Text(angka.toString()),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  angka += 1;
                });
              },
              child: Text('Tambah'))
        ],
      )),
    );
  }
}
