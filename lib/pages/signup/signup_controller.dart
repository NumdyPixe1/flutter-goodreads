import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/services/account_service.dart';

class SignUpController extends GetxController {
  void onSignInPressed() {
    Get.toNamed('/signin');
  }

  final formKey = GlobalKey<FormState>();

  //---Name---
  final nameKey = GlobalKey<FormFieldState>();
  final nameController = TextEditingController();

  void onNameChanged(String value) {
    nameKey.currentState?.validate();
  }

  String? nameValidator(String? value) {
    if (value!.isEmpty) {
      //ตรวจสอบมีการใส่ค่า หรือไม่
      return 'Fullname is required.';
    }
    if (value.length > 250) {
      //ตรวจสอบตัวอักษรน้อยกว่าที่กำหนด หรือไม่
      return "Name can't be longer than 250 characters.";
    }

    return null; //ถ้าไม่มีปัญหา คืนค่าเป็นค่าว่าง
  }

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

  void onSignUpPressed() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    try {
      _isLoading.value = true;
      await _accountService.signUp(
          nameController.text, emailController.text, passwordController.text);
      Get.offAllNamed('/app');
      Get.snackbar('Sign up successfully', '');
    } catch (e) {
      Get.snackbar('Sign up failed', '$e');
    } finally {
      _isLoading.value = false;
    }
  }
}
