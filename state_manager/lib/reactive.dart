import 'package:flutter/foundation.dart';

class Reactive<T> extends ValueNotifier<T> {
  Reactive(T value) : super(value);

  set value(T newValue) {
    if (newValue != super.value) {
      super.value = newValue;
      notifyListeners();
    }
  }

  T get value => super.value;

  void reset(T defaultValue) {
    value = defaultValue;
  }
}
