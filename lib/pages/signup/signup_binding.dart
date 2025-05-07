import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/signup/signup_controller.dart';

class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
