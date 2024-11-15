import 'controller.dart';

class DependencyManager {
  static final Map<Type, dynamic> _dependencies = {};

  static T put<T>(T instance) {
    _dependencies[T] = instance;
    if (instance is Controller) {
      instance.onInit();
    }
    return instance;
  }

  static T find<T>() {
    if (_dependencies.containsKey(T)) {
      return _dependencies[T] as T;
    }
    throw Exception('Instance of type $T not found');
  }

  static void clearAll() {
    _dependencies.forEach((key, value) {
      if (value is Controller) {
        value.onClose();
      }
    });
    _dependencies.clear();
  }
}
