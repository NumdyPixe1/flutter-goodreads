import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/signup/signup_controller.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});
  static const title = 'Sign up';
  static const route = '/signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Text('goodreads',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: Color.fromRGBO(40, 35, 31, 1))),
              SizedBox(
                height: 16,
              ),
              Text('Create Account',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Color.fromRGBO(254, 232, 208, 1))),
              SizedBox(
                height: 12,
              ),
              Obx(
                () => TextFormField(
                    key: controller.nameKey,
                    onChanged: controller.onNameChanged,
                    validator: controller.nameValidator,
                    controller: controller.nameController,
                    enabled: !controller.isLoading,
                    //-------------------------------------
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                                color:
                                    const Color.fromARGB(255, 255, 255, 255))),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                                color:
                                    const Color.fromARGB(255, 255, 255, 255))),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                                color:
                                    const Color.fromARGB(255, 255, 255, 255))),
                        prefixIcon: null,
                        border: OutlineInputBorder(),
                        hintText: 'First and last name')),
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                key: controller.emailKey,
                onChanged: null,
                validator: controller.emailValidator,
                controller: controller.emailController,
                enabled: !controller.isLoading,
                //-------------------------------------
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255))),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255))),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255))),
                    prefixIcon: null,
                    border: OutlineInputBorder(),
                    hintText: 'Your email address'),
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                  obscureText: true,
                  key: controller.passwordKey,
                  onChanged: controller.onPasswordChanged,
                  validator: controller.passwordValidator,
                  controller: controller.passwordController,
                  enabled: !controller.isLoading,
                  //-------------------------------------
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 255, 255, 255))),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 255, 255, 255))),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 255, 255, 255))),
                      prefixIcon: null,
                      border: OutlineInputBorder(),
                      hintText: 'Create account')),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('! Passwords must be at least 6 characters.',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: const Color.fromARGB(50, 255, 255, 255))),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              SizedBox(
                width: 400,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Color.fromRGBO(111, 111, 111, 1)),
                      // Color.fromRGBO(111, 111, 111, 0.5)
                      backgroundColor: Color.fromRGBO(40, 35, 31, 1)),
                  onPressed:
                      controller.isLoading ? null : controller.onSignUpPressed,
                  child: Text(
                    'Create account',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  // controller.isLoading
                  //     ? SizedBox(
                  //         width: 20.0,
                  //         height: 20.0,
                  //         child: CircularProgressIndicator(),
                  //       )
                  //     : SizedBox()
                  //],
                  //)
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'By creating an account, you agree to the \nGoodreads Terms of Service and Privacy Policy.',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white)),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white)),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              SizedBox(
                width: 400,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side:
                            BorderSide(color: Color.fromRGBO(111, 111, 111, 1)),
                        // Color.fromRGBO(111, 111, 111, 0.5)
                        backgroundColor: Color.fromRGBO(27, 27, 27, 1)),
                    onPressed: controller.onSignInPressed,
                    child: Text(
                      'Sign-In now',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('2023 Goodreads, Inc.',
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
