import 'package:get/get.dart';
import 'package:numdao_finalproject/home/app_controller.dart';
import 'package:numdao_finalproject/home/widgets/tabs/home_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppController());
    Get.lazyPut(() => HomeController());
  }
}
