import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/nav_tabs/discover_list/discover_list_controller.dart';

class DiscoverListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiscoverListController());
  }
}
