import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/notify/notify_controller.dart';

class NotifyPage extends GetView<NotifyController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(27, 27, 27, 1),
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Text(
              'notifications',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white),
            ),
            Text('messages'),
            Text('requests')
          ]),
          backgroundColor: Color.fromRGBO(38, 37, 32, 1),
          title: Text(
            'Notifications Center',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
                iconSize: 25,
                color: Colors.white,
                onPressed: null,
                //controller.onNotifyPressed,
                icon: Icon(Icons.notifications_none_rounded))
          ],
        ),
        body: TabBarView(children: [
          Center(
              child: Text('notifications list',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white))),
          Center(
              child: Text('message list',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white)))
        ]),
      ),
    );
  }
}
