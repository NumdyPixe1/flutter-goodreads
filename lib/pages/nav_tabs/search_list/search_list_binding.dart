import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/nav_tabs/search_list/search_list_controller.dart';

class SearchListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchListController());
  }
}
