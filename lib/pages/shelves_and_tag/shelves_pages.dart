import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/app/app_controller.dart';
import 'package:numdao_finalproject/pages/shelves_and_tag/shelves_controller.dart';
import 'package:numdao_finalproject/widgets/shelves_widget.dart';

class ShelvesPages extends GetView<ShelvesController> {
  const ShelvesPages({super.key});
  static const route = '/shelves';

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.find<AppController>();

    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                iconSize: 25,
                onPressed: appController.onOpenNotifyPageInsideTabPressed,
                //controller.onNotifyPressed,
                icon: Icon(Icons.notifications_none_rounded))
          ],
          leading: BackButton(
            color: Colors.white,
          ),
          title: Text('appbar_title_shelves'.tr,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith()),
        ),
        body: Column(
          children: [
            ShelvesWidget('read'.tr, '23 books', 'assets/images/books/4.jpg',
                'assets/images/books/8.jpg', 'assets/images/books/9.jpg'),
            ShelvesWidget(
              'currently_reading'.tr,
              '10 books',
              'assets/images/books/7.jpg',
              'assets/images/books/2.jpg',
              'assets/images/books/11.jpg',
            ),
            ShelvesWidget(
                'want_to_read'.tr,
                '18 books',
                'assets/images/books/1.jpg',
                'assets/images/books/10.jpg',
                'assets/images/books/3.jpg'),
            ShelvesWidget('Manga', '8 books', 'assets/images/books/5.jpg',
                'assets/images/books/6.jpg', 'assets/images/books/7.jpg'),
          ],
        ));
  }
}
