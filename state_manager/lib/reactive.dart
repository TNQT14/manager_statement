import 'package:flutter/foundation.dart';

/// Reactive class to manage state using ValueNotifier
class Reactive<T> extends ValueNotifier<T> {
  Reactive(T value) : super(value);

  set value(T newValue) {
    if (newValue != super.value) {
      super.value = newValue;
      notifyListeners();
    }
  }

  T get value => super.value;
}
