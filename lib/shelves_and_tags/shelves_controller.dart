import 'package:get/get.dart';

class ShelvesController extends GetxController {
  String context = 'Shelves';

  void onNotifyPressed() {
    Get.toNamed('/notify');
  }
}
