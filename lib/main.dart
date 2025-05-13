import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/app/app_binding.dart';
import 'package:numdao_finalproject/pages/languages.dart';
import 'package:numdao_finalproject/pages/notify/notify_binding.dart';
import 'package:numdao_finalproject/pages/notify/notify_page.dart';
import 'package:numdao_finalproject/pages/setting/settings_binding.dart';
import 'package:numdao_finalproject/pages/setting/settings_page.dart';
// import 'package:numdao_finalproject/post/post_service.dart';
// import 'package:numdao_finalproject/post/post_service_mock.dart';
import 'package:numdao_finalproject/pages/signin/signin_binding.dart';
import 'package:numdao_finalproject/pages/signup/signup_binding.dart';
import 'package:numdao_finalproject/pages/signup/signup_page.dart';
import 'package:numdao_finalproject/pages/themes.dart';
import 'package:numdao_finalproject/pages/welcome/welcome_binding.dart';
import 'package:numdao_finalproject/pages/app/app_page.dart';
import 'package:numdao_finalproject/pages/signin/signin_page.dart';
import 'package:numdao_finalproject/pages/welcome/welcome_page.dart';
import 'package:numdao_finalproject/services/post_service.dart';
import 'package:numdao_finalproject/services/post_service_mock.dart';
import 'package:numdao_finalproject/services/account_service.dart';
import 'package:numdao_finalproject/services/account_service_mock.dart';
import 'package:numdao_finalproject/widgets/show_languages_alert_widget.dart';

void main() {
  _init();
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => GetMaterialApp(
        title: 'Good read App project',
        initialRoute: WelcomePage.route,
        getPages: [
          GetPage(
              name: WelcomePage.route,
              page: () => WelcomePage(),
              binding: WelcomeBinding()),
          GetPage(
              name: SignInPage.route,
              page: () => SignInPage(),
              binding: SignInBinding()),
          GetPage(
              name: SignUpPage.route,
              page: () => SignUpPage(),
              binding: SignUpBinding()),
          GetPage(
            name: AppPage.route,
            page: () => AppPage(),
            binding: AppBinding(),
          ),
          GetPage(
            name: SettingsPage.route,
            page: () => SettingsPage(),
            binding: SettingsBinding(),
          ),
        ],
        //Theme
        theme: lightTheme,
        darkTheme: darkTheme,
        // themeMode: SettingsController(),
        //Languages
        translations: Languages(),
        fallbackLocale: Locale('en', 'US')),
  ));
}

void _init() {
  Get.put(ShowLanguagesAlertWidget());
  Get.put(FlutterSecureStorage(), permanent: true);
  Get.lazyPut<AccountService>(() => AccountServiceMock());
  Get.lazyPut<PostService>(() => PostServiceMock());
}
