import 'package:state_manager/state_manager.dart';

class CounterController extends Controller {
  final Reactive<int> counter = Reactive<int>(0);

  void increment() {
    counter.value++;
  }

  @override
  void onInit() {
    super.onInit();
    print("CounterController initialized");
  }
}