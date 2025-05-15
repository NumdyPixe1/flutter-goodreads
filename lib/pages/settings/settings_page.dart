import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/app/app_controller.dart';
import 'package:numdao_finalproject/pages/settings/settings_controller.dart';
import 'package:numdao_finalproject/widgets/button_widget.dart';
import 'package:numdao_finalproject/widgets/show_languages_alert_widget.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});
  static const route = '/settings';
  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.find<AppController>();

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              iconSize: 25,
              onPressed: appController.onOpenNotifyPageInsideTabPressed,
              icon: Icon(Icons.notifications_none_rounded))
        ],
        title: Text('settings_title'.tr,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith()),
      ),
      body: Column(children: [
        ButtonWidget('Language', controller.showLanguagesAlert),
        ButtonWidget('Theme', () {})
      ]),
      // CategorybuttonWidget(
      //   'Settings',
      // ),
      // CategorybuttonWidget('Language'),
      // CategorybuttonWidget('Theme'),

      // SizedBox(
      //   height: 30,
      // ),
      // Center(
      //   child: Column(
      //     children: [
      //       Text('goodreads',
      //           style:
      //               Theme.of(context).textTheme.displayMedium?.copyWith()),
      //       SizedBox(
      //         height: 14,
      //       ),
      //       Text(
      //         "Find more books you'll love. \nUse the scan feature to easily keep track of books.\nGet recommendations from readers like you.",
      //         style: Theme.of(context).textTheme.titleSmall?.copyWith(),
      //         textAlign: TextAlign.center,
      //       ),
      //       SizedBox(height: 10),
      //       Text(
      //         "Version 2.64.0 2025",
      //         style: Theme.of(context).textTheme.titleSmall?.copyWith(),
      //         textAlign: TextAlign.center,
      //       ),
      //       SizedBox(height: 10),
      //       TextButton(
      //         onPressed: () {},
      //         child: Text(
      //           'sign out'.toUpperCase(),
      //           style: Theme.of(context).textTheme.titleSmall?.copyWith(
      //                 color: Color.fromRGBO(60, 143, 132, 1),
      //                 fontWeight: FontWeight.bold,
      //               ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

//  Text(
//                   'Sign in',
//                   style: Theme.of(context).textTheme.titleMedium?.copyWith(),
