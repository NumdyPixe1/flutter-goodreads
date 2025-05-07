import 'package:get/get.dart';

class WelcomeController extends GetxController {
  void onSignInPressed() {
    Get.toNamed('/signin');
  }

  void onSignUpPressed() {
    Get.toNamed('/signup');
  }

  void onHomePressed() {
    Get.offAllNamed('/app');
  }
}
