import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:numdao_finalproject/pages/welcome/welcome_page.dart';
import 'package:numdao_finalproject/services/account_service.dart';

class SettingsController extends GetxController {
  //   static const _themeModeKey = 'themeMode';
  //   static const _languageKey = 'language';
  //late GetStorage _storage;

  //   final _currentThemeMode = Rx<ThemeMode?>(null);
  //   ThemeMode? get currentThemeMode => _currentThemeMode.value;

//     late Map<String, String> _availableLanguages;
//     Map<String, String> get availableLanguages => _availableLanguages;
//   late String? _currentLanguage;
//    String? get currentLanguage => _currentLanguage;
  late AccountService _accountService;

  @override
  void onInit() {
    _accountService = Get.find();
    // _availableLanguages = Get.translations.map<String, String>((key, value) {
    //   return MapEntry(key, value['label_display_language_name']!);
    // });
    //   _storage = Get.find<GetStorage>();
    // //load current
    // final curLocale = getLocale();
    // _currentLanguage = '${curLocale.languageCode}_${curLocale.countryCode}';
    super.onInit();
  }

// //   Future<void> onThemeModeChanged(ThemeMode? value) async {
// //     _currentThemeMode.value = value;
// //     Get.changeThemeMode(value!);
// //     //save current thememode
// //     await _storage.write(_themeModeKey, value.name);
// //   }

// //   static ThemeMode getThemeMode() {
// //     final storage = Get.find<GetStorage>();
// //     final value = storage.read(_themeModeKey);
// //     return ThemeMode.values.byName(value);
// //   }

// //   // static Locale getLocale() {
// //   //   final storage = Get.find<GetStorage>();
// //   //   final value = storage.read(_languageKey) ?? 'en_US';
// //   //   final langs = value.split('_');

// //   //   return Locale(langs[0], langs[1]);
// //   // }

// //   // Future<void> onLanguageChanged(String? value) async {
// //   //   _currentLanguage = value;
// //   // }

// //   // void showThemeModeAlert() {
// //   //   Get.dialog(SimpleDialog(
// //   //     title: Text('Theme'),
// //   //     contentPadding: EdgeInsets.all(20.0),
// //   //     children: [
// //   //       SimpleDialogOption(
// //   //         child: Text('Light theme'),
// //   //         onPressed: () {
// //   //           // onThemeModeChanged(ThemeMode.light);
// //   //         },
// //   //       ),
// //   //       SimpleDialogOption(
// //   //         child: Text('Dark theme'),
// //   //         onPressed: () {},
// //   //       )
// //   //     ],
// //   //   ));
// //   // }

// //   // void showLanguagesAlert() {
// //   //   Get.dialog(SimpleDialog(
// //   //     title: Text('App Language'),
// //   //     contentPadding: EdgeInsets.all(20.0),
// //   //     children: [
// //   //       SimpleDialogOption(
// //   //         child: Text('English'),
// //   //         onPressed: () {},
// //   //       ),
// //   //       SimpleDialogOption(
// //   //         child: Text('日本語'),
// //   //         onPressed: () {},
// //   //       )
// //   //     ],
// //   //   ));
// //   // }

  void onSignOutPressed() {
    //await _accountService.logOut();
    _accountService.signOut();
    Get.snackbar('Log out successfully', 'See you again');
    Get.offAllNamed(WelcomePage.route);
  }
}
