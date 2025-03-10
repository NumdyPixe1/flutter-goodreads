import 'package:get/get.dart';

class WelcomeController extends GetxController {
  void onSignInPressed() {
    Get.toNamed('/signin');
  }

  void onHomePressed() {
    Get.offAllNamed('/app');
  }
}
