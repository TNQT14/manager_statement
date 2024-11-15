import 'dart:async';
import 'package:state_manager/reactive.dart';

Future<void> updateStateSync<T>(Reactive<T> reactive, T Function(T) updater) async {
  reactive.value = updater(reactive.value);
}

Future<void> updateStateAsync<T>(Reactive<T> reactive, Future<T> Function(T) updater) async {
  reactive.value = await updater(reactive.value);
}
