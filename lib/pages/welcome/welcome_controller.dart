import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/app/app_page.dart';
import 'package:numdao_finalproject/services/account_service.dart';

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

//------------------------------------
  final formKey = GlobalKey<FormState>();
  late AccountService _accountService;
  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  @override
  void onInit() {
    _accountService = Get.find();
    super.onInit();
  }

  Future<void> onSignInAutoPressed() async {
    try {
      _isLoading.value = true;
      await _accountService.signInAuto();
      Get.offAllNamed(AppPage.route);
      Get.snackbar('Log in successfully', 'Welcome back');
    } catch (e) {
    } finally {
      _isLoading.value = false;
    }
  }
}
