import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/signin/signin_controller.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});
  static const title = 'Sign in';
  static const route = '/signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(40, 36, 30, 1),
        title: Text('Sign in',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Color.fromRGBO(254, 232, 208, 1))),
        toolbarHeight: 60,
      ),
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Obx(
                () => TextFormField(
                  key: controller.emailKey,
                  onChanged: null,
                  validator: controller.emailValidator,
                  controller: controller.emailController,
                  enabled: !controller.isLoading,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      floatingLabelStyle:
                          TextStyle(color: Color.fromRGBO(60, 143, 132, 1)),
                      labelText: 'E-mail'),
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Obx(
                () => TextFormField(
                    obscureText: true,
                    key: controller.passwordKey,
                    onChanged: controller.onPasswordChanged,
                    validator: controller.passwordValidator,
                    controller: controller.passwordController,
                    enabled: !controller.isLoading,

                    //------------
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      // suffixIcon:
                      //   ,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: 'Goodreads password',
                      floatingLabelStyle:
                          TextStyle(color: Color.fromRGBO(60, 143, 132, 1)),
                    )),
              ),
              SizedBox(
                height: 24,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot your password?',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Color.fromRGBO(60, 143, 132, 1)),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Obx(
                () => SizedBox(
                  height: 55,
                  width: 300,
                  child: ElevatedButton(
                      onPressed: controller.isLoading
                          ? null
                          : controller.onSignInPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(95, 77, 63, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      child: Text(
                        'Sign in',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Color.fromRGBO(245, 235, 225, 1)),
                      )),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text('Get help with signing in',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Color.fromRGBO(60, 143, 132, 1)))),
              SizedBox(
                height: 260,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      'By using Goodreads, you agree to our Terms of \nUse, Privacy Policy, and Ads Policy',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
