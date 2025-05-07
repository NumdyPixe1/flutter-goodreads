import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/signin/signin_controller.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}
