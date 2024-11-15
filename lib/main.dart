import 'package:flutter/material.dart';
import 'package:manager_statement/second_screen.dart';
import 'package:state_manager/state_manager.dart';

import 'controllers/counter_controller.dart';

void main() {
  DependencyManager.put(CounterController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatelessWidget {
  final CounterController controller = DependencyManager.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Manager')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder<int>(
              valueListenable: controller.counter,
              builder: (context, value, child) {
                return Text(
                  'Counter: $value',
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            ElevatedButton(
              onPressed: controller.increment,
              child: const Text('Increment'),
            ),
            ElevatedButton(
              onPressed: controller.decrement,
              child: const Text('Decrement'),
            ),
            ElevatedButton(
              onPressed: controller.reset,
              child: const Text('Reset'),
            ),

            ElevatedButton(
              onPressed: () async {
                await controller.incrementAsync();
              },
              child: const Text('Increment Async'),
            ),

            ElevatedButton(
              onPressed: () async {
                await controller.decrementAsync();
              },
              child: const Text('Decrement Async'),
            ),


            ElevatedButton(
              onPressed: () => Navigation.to(context, SecondScreen()),
              child: const Text('Go to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
