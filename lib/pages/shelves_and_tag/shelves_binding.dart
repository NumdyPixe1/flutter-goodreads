import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/shelves_and_tag/shelves_controller.dart';

class ShelvesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShelvesController());
  }
}
