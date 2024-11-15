import 'package:flutter/material.dart';
import 'package:state_manager/state_manager.dart';

import 'controllers/counter_controller.dart';
import 'counter_screen.dart';

class InitScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Manager')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                DependencyManager.put(CounterController());
                Navigation.to(context, CounterScreen());
              },
              child: const Text('Go to Counter Screen'),
            ),
          ],
        ),
      ),
    );
  }
}