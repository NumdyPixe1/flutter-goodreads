import 'package:get/get.dart';
import 'package:numdao_finalproject/nav_tabs/mybooks_list/mybooks_list_controller.dart';

class MybooksListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MybooksListController());
  }
}
