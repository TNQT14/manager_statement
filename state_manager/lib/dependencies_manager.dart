class DependencyManager {
  static final Map<Type, dynamic> _dependencies = {};

  static void put<T>(T instance) {
    _dependencies[T] = instance;
  }

  static T find<T>() {
    if (_dependencies.containsKey(T)) {
      return _dependencies[T] as T;
    }
    throw Exception('Instance of type $T not found');
  }

  static void clearAll() {
    _dependencies.clear();
  }
}
