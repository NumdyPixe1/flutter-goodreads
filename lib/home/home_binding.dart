import 'package:get/get.dart';
import 'package:numdao_finalproject/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
