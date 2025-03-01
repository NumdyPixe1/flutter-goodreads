import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  void onSignInPressed() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    Get.toNamed('/home');
    Get.snackbar('Log in successfully', 'Welcome back');
    // if (emailController.text == 'abc') {
    //   Get.toNamed('/home');
    //   Get.snackbar('Log in successfully', 'Welcome back');
    // } else {
    //   Get.snackbar('Log in fail', 'Incorrect username or password');
    // }
  }
}
