
import 'package:flutter/material.dart';
import 'package:state_manager/state_manager.dart';
import 'controllers/counter_controller.dart';

class SecondScreen extends StatelessWidget {
  final CounterController controller = DependencyManager.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
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
              onPressed: () => Navigation.back(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}