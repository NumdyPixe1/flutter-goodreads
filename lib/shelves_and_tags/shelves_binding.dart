import 'package:get/get.dart';

class ShelvesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShelvesBinding());
  }
}
