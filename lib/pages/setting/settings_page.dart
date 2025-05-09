import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/app/app_controller.dart';
import 'package:numdao_finalproject/pages/setting/settings_controller.dart';

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
              color: Colors.white,
              onPressed: appController.onOpenPageInsideTabPressed,
              icon: Icon(Icons.notifications_none_rounded))
        ],
        title: Text('settings_title'.tr,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                )),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
