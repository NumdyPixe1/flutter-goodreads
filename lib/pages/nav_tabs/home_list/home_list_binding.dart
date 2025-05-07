import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/nav_tabs/home_list/home_list_controller.dart';

class HomeListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeListController());
  }
}
