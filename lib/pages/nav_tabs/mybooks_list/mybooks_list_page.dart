import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/nav_tabs/mybooks_list/mybooks_list_controller.dart';
import 'package:numdao_finalproject/widgets/appbar_widget.dart';
import 'package:numdao_finalproject/widgets/button_widget.dart';
import 'package:numdao_finalproject/widgets/elevated_button_widget.dart';
import 'package:numdao_finalproject/widgets/shelves_widget.dart';
import 'package:numdao_finalproject/widgets/text_button_underline_widget.dart';

class MybooksListPage extends GetView<MybooksListController> {
  const MybooksListPage({super.key});
  static const route = '/mybookslist';

  @override
  Widget build(BuildContext context) {
    final items = [
      {'label': 'Kindle Notes & Highlights', 'onPressed': () {}},
      {'label': 'Reading Challenge', 'onPressed': () {}},
      {'label': '2024 Year in Books', 'onPressed': () {}},
      {'label': 'Edit your favourite ganres', 'onPressed': () {}},
      {'label': 'Add your favourite genres', 'onPressed': () {}},
    ];
    return Scaffold(
      appBar: AppbarWidget(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 24,
              ),
              TextButtonUnderlineWidget(
                  'shelves', controller.onOpenPageInsideTabPressed),
              SizedBox(
                height: 24,
              ),
              ElevatedButtonWidget("Update yoyr reading progress"),
              ShelvesWidget('Read', '23 books', 'assets/images/books/4.jpg',
                  'assets/images/books/8.jpg', 'assets/images/books/9.jpg'),
              ShelvesWidget(
                'Currently Reading',
                '10 books',
                'assets/images/books/7.jpg',
                'assets/images/books/2.jpg',
                'assets/images/books/11.jpg',
              ),
              ShelvesWidget(
                  'Want to Read',
                  '18 books',
                  'assets/images/books/1.jpg',
                  'assets/images/books/10.jpg',
                  'assets/images/books/3.jpg'),
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
              TextButtonUnderlineWidget(
                  'tags', controller.onOpenPageInsideTabPressed),
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
              Divider(),
              SizedBox(
                height: 24,
              ),
              ElevatedButtonWidget("+ Create a new tag or shelf"),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Text('reading activity'.toUpperCase(),
                      style:
                          Theme.of(context).textTheme.titleMedium?.copyWith()),
                  Divider(),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: items.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, childAspectRatio: 7),
                      itemBuilder: (BuildContext context, int index) {
                        final item = items[index];

                        return ButtonWidget(item['label'] as String,
                            item['onPressed'] as VoidCallback);
                      }
                      // GenresButtonWidget('Adventure')
                      ),
                  // ButtonWidget('Kubdke ', () {}),
                ],
              ),
            ],
          ),
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
}
