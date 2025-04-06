import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/shelves/shelves_controller.dart';
import 'package:numdao_finalproject/widgets/shelves_widget/shelves_page_widget.dart';

class ShelvesPages extends GetView<ShelvesController> {
  const ShelvesPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(27, 27, 27, 1),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                iconSize: 25,
                color: Colors.white,
                onPressed: controller.onNotifyPressed,
                icon: Icon(Icons.notifications_none_rounded))
          ],
          //controller.onNotifyPressed
          leading: BackButton(
            color: Colors.white,
          ),
          backgroundColor: Color.fromRGBO(40, 35, 31, 1),
          title: Text('All shelves & tags',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                  )),
        ),
        body: Column(
          children: [
            ShelvesPageWidget('Read', '23 books', 'assets/images/books/4.jpg',
                'assets/images/books/8.jpg', 'assets/images/books/9.jpg'),
            ShelvesPageWidget(
              'Currently Reading',
              '10 books',
              'assets/images/books/7.jpg',
              'assets/images/books/2.jpg',
              'assets/images/books/11.jpg',
            ),
            ShelvesPageWidget(
                'Want to Read',
                '18 books',
                'assets/images/books/1.jpg',
                'assets/images/books/10.jpg',
                'assets/images/books/3.jpg'),
            ShelvesPageWidget('Manga', '8 books', 'assets/images/books/5.jpg',
                'assets/images/books/6.jpg', 'assets/images/books/7.jpg'),
          ],
        ));
  }
}
