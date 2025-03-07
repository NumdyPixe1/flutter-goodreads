import 'package:get/get.dart';

class HomeController extends GetxController {
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  void onNotifyPressed() {
    Get.toNamed('/notify');
  }
}
