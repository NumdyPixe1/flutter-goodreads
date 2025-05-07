import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/app/app_binding.dart';
import 'package:numdao_finalproject/pages/notify/notify_binding.dart';
import 'package:numdao_finalproject/pages/notify/notify_page.dart';
// import 'package:numdao_finalproject/post/post_service.dart';
// import 'package:numdao_finalproject/post/post_service_mock.dart';
import 'package:numdao_finalproject/pages/signin/signin_binding.dart';
import 'package:numdao_finalproject/pages/signup/signup_binding.dart';
import 'package:numdao_finalproject/pages/signup/signup_page.dart';
import 'package:numdao_finalproject/pages/welcome/welcome_binding.dart';
import 'package:numdao_finalproject/pages/app/app_page.dart';
import 'package:numdao_finalproject/pages/signin/signin_page.dart';
import 'package:numdao_finalproject/pages/welcome/welcome_page.dart';
import 'package:numdao_finalproject/services/post_service.dart';
import 'package:numdao_finalproject/services/post_service_mock.dart';
import 'package:numdao_finalproject/services/account_service.dart';
import 'package:numdao_finalproject/services/account_service_mock.dart';

void main() {
  _init();
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => GetMaterialApp(
      title: 'Good read App project',
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/', page: () => WelcomePage(), binding: WelcomeBinding()),
        GetPage(
            name: '/signin',
            page: () => SignInPage(),
            binding: SignInBinding()),
        GetPage(
            name: '/signup',
            page: () => SignUpPage(),
            binding: SignUpBinding()),
        GetPage(
          name: '/app',
          page: () => AppPage(),
          binding: AppBinding(),
        ),
        GetPage(
          name: '/notify',
          page: () => NotifyPage(),
          binding: NotifyBinding(),
        ),
      ],
    ),
  ));
}

void _init() {
  Get.put(FlutterSecureStorage(), permanent: true);
  Get.lazyPut<AccountService>(() => AccountServiceMock());
  Get.lazyPut<PostService>(() => PostServiceMock());
}
