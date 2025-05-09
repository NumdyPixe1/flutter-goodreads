import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/shelves_and_tag/shelves_pages.dart';

class MybooksListController extends GetxController {
  void onOpenPageInsideTabPressed() {
    Get.toNamed(ShelvesPages.route, id: 1);
  }
}
