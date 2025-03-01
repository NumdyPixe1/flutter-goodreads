import 'package:get/get.dart';

class WelcomeController extends GetxController {
  void onSignInPressed() {
    Get.offAllNamed('/signin');
  }

  void onHomePressed() {
    Get.offAllNamed('/home');
  }
}
