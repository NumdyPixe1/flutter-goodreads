import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/setting/settings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});
  static const title = 'Settings';
  static const route = '/settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              iconSize: 25,
              color: Colors.white,
              onPressed: controller.onNotifyPressed,
              icon: Icon(Icons.notifications_none_rounded))
        ],
        title: Text('Settings & Support',
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
