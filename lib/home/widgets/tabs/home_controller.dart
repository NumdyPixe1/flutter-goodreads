import 'package:get/get.dart';

class HomeController extends GetxController {
  var like = 0.obs;

  void onLikePressed() {
    ++like;
  }
}
