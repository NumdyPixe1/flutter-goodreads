import 'package:get/get.dart';

class MybooksListController extends GetxController {
  void onOpenPageInsideTabPressed() {
    Get.toNamed('/shelves', id: 1);
  }
}
