import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/app/app_controller.dart';
import 'package:numdao_finalproject/pages/setting/settings_controller.dart';

class SettingsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppController());
    Get.lazyPut(() => SettingsController());
  }
}
