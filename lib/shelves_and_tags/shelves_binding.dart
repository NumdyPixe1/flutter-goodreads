import 'package:get/get.dart';
import 'package:numdao_finalproject/shelves_and_tags/shelves_controller.dart';

class ShelvesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShelvesController());
  }
}
