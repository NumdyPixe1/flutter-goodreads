import 'package:get/get.dart';
import 'package:numdao_finalproject/notify/notify_controller.dart';

class NotifyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotifyController());
  }
}
