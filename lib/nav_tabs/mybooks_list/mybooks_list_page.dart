import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/nav_tabs/mybooks_list/mybooks_list_controller.dart';

class MybooksListPage extends GetView<MybooksListController> {
  const MybooksListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
            ),
            _textButtonItem(context, 'shelves'),
            SizedBox(
              height: 24,
            ),
            _elevatedButtonItem(context, 'Update yoyr reading progress'),
            // ListView(
            //   children: [
            //     ListTile(
            //       title: Text('Read'),
            //       subtitle: Text('23 books'),
            //     )
            //   ],
            // ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: Text('See all'.toUpperCase(),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color.fromRGBO(60, 143, 132, 1),
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            _textButtonItem(context, 'tags'),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _tagButtonItem(context, 'history-of-southeast-asia', '(5)'),
                SizedBox(
                  width: 6,
                  height: 6,
                ),
                _tagButtonItem(context, 'manga', '(8)'),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            TextButton(
                onPressed: () {},
                child: Text('See all'.toUpperCase(),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color.fromRGBO(60, 143, 132, 1),
                        fontWeight: FontWeight.bold))),
            Divider(
              color: Color.fromRGBO(255, 255, 255, 0.50),
            ),
            SizedBox(
              height: 24,
            ),
            _elevatedButtonItem(context, '+ Create a new tag or shelf'),
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                Text('reading activity'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white)),

                Divider(),
                // Container(
                //   width: 180,
                //   height: 2,
                //   color: Colors.grey,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextButton _tagButtonItem(
      BuildContext context, String titleButton, String numTag) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Color.fromRGBO(60, 143, 132, 0.5)),
        onPressed: () {},
        child: Text(
          titleButton + ' ' + numTag,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Color.fromRGBO(60, 143, 132, 1),
              fontWeight: FontWeight.bold),
        ));
  }

  TextButton _textButtonItem(BuildContext context, String titleButton) {
    return TextButton(
        onPressed: () {},
        child: Column(
          children: [
            Text(titleButton.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white)),
            SizedBox(
              height: 4,
            ),
            Container(
              width: 180,
              height: 2,
              color: Colors.grey,
            ),
          ],
        ));
  }

  ElevatedButton _elevatedButtonItem(BuildContext context, String titleButton) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        fixedSize: Size(280, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
          side: BorderSide(width: 2, color: Color.fromRGBO(97, 90, 71, 1)),
        ),
      ),
      child: Text(titleButton,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Color.fromRGBO(254, 232, 208, 1))),
    );
  }
}
