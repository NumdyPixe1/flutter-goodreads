import 'package:get/get.dart';

class AppController extends GetxController {
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  void onBottomNavigationBarItemTap(int index) {
    _selectedIndex.value = index;
  }

  void onNotifyPressed() {
    Get.toNamed('/notify');
  }
}
