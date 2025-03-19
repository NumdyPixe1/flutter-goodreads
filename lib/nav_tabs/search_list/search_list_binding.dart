import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchController());
  }
}
