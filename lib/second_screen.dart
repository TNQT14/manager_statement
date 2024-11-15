
import 'package:flutter/material.dart';
import 'package:state_manager/state_manager.dart';
import 'controllers/counter_controller.dart';

class SecondScreen extends StatelessWidget {
  final CounterController controller = DependencyManager.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder<int>(
              valueListenable: controller.counter,
              builder: (context, value, child) {
                return Text(
                  'Counter: $value',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            ElevatedButton(
              onPressed: () => Navigation.back(context),
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}