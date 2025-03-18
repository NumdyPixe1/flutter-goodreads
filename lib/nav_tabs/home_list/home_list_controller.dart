import 'package:get/get.dart';

class HomeListController extends GetxController {
  var like = 0.obs;

  void onLikePressed() {
    ++like;
  }
}
