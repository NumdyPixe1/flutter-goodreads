import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/welcome/welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 45,
              child: ElevatedButton.icon(
                  icon: Image.asset(
                    'assets/images/icons/amazon.png',
                    color: Colors.white,
                    scale: 50,
                  ),
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Color.fromRGBO(137, 106, 22, 1)),
                      backgroundColor: Color.fromRGBO(137, 106, 22, 0.5)),
                  onPressed: controller.onHomePressed,
                  label: Text(
                    'Continue with Amazon',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 14,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Color.fromRGBO(111, 111, 111, 1)),
                      backgroundColor: Color.fromRGBO(111, 111, 111, 0.5)),
                  onPressed: controller.onSignUpPressed,
                  child: Text(
                    'Sign up with e-mail',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'By Creating an account, you agree to the Goodreads \nterms of service and privacy policy.',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: const Color.fromARGB(128, 255, 255, 255)),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'Already a member?',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: const Color.fromARGB(128, 255, 255, 255)),
            ),
            SizedBox(
              height: 18,
            ),
            TextButton(
              onPressed: controller.onSignInPressed,
              child: Text(
                'Sign in',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
