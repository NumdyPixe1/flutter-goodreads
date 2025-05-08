import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/app/app_page.dart';
import 'package:numdao_finalproject/services/account_service.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();

//--------------------------------------------------------
  final emailKey = GlobalKey<FormFieldState>();
  final emailController = TextEditingController();
  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is Incorrect';
    }
    return null;
  }

  void onEmailChanged(String value) {
    emailKey.currentState?.validate();
  }

//--------------------------------------------------------
  final passwordKey = GlobalKey<FormFieldState>();
  final passwordController = TextEditingController();
  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'password is Incorrect';
    }
    return null;
  }

  void onPasswordChanged(String value) {
    passwordKey.currentState?.validate();
  }

//--------------------------------------------------------
  late AccountService _accountService;
  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  @override
  void onInit() {
    _accountService = Get.find();
    super.onInit();
  }

  Future<void> onSignInPressed() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      _isLoading.value = true;
      await _accountService.signIn(
          emailController.text, passwordController.text);
      Get.offAllNamed(AppPage.route);
      Get.snackbar('Log in successfully', 'Welcome back');
    } catch (e) {
      passwordController.clear();
      Get.snackbar('Log in failed', '$e');
    } finally {
      _isLoading.value = false;
    }

    // if (emailController.text == 'abc') {
    //   Get.toNamed('/home');
    //   Get.snackbar('Log in successfully', 'Welcome back');
    // } else {
    //   Get.snackbar('Log in fail', 'Incorrect username or password');
    // }
  }
}
