import 'package:state_manager/state_manager.dart';

class CounterController extends Controller {
  final Reactive<int> counter = Reactive<int>(0);

  void increment() => counter.value++;

  void decrement() => counter.value--;

  void reset()=> counter.reset(0);


  Future<void> incrementAsync() async {
    await Future.delayed(Duration(seconds: 2));
    counter.value++;
  }

  Future<void> decrementAsync() async {
    await Future.delayed(Duration(seconds: 2));
    counter.value--;
  }

  @override
  void onInit() {
    super.onInit();
  }

  // @override
  // void onDispose() {
  //   print("CounterController disposed");
  //   super.onDispose();
  // }
}