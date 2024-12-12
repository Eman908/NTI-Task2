import 'package:flutter/material.dart';
import 'package:task/widgets/fun.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            x.toString(),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          fun(
            press: () {
              setState(() {
                x++;
              });
            },
            icon: const Icon(
              Icons.add,
              size: 32,
            ),
          ),
          fun(
            press: () {
              setState(() {
                x--;
              });
            },
            icon: const Icon(
              Icons.remove,
              size: 32,
            ),
          ),
          fun(
            press: () {
              setState(() {
                x = 0;
              });
            },
            icon: const Icon(
              Icons.repeat,
              size: 32,
            ),
          )
        ],
      ),
    );
  }
}
