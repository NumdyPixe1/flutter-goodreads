import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/nav_tabs/search_list/search_list_controller.dart';
import 'package:numdao_finalproject/widgets/appbar_widget.dart';
import 'package:numdao_finalproject/widgets/button_widget.dart';
import 'package:numdao_finalproject/widgets/genres_button_widget.dart';
import 'package:numdao_finalproject/widgets/text_button_underline_widget.dart';

class SearchListPage extends GetView<SearchListController> {
  const SearchListPage({super.key});
  static const route = '/searchlist';

  @override
  Widget build(BuildContext context) {
    final items = [
      {'label': 'Adventure', 'color': Colors.blueAccent},
      {'label': 'Historical', 'color': Colors.black},
      {'label': 'Inspirational', 'color': Colors.pink},
      {'label': 'Literature', 'color': Colors.green},
      {'label': 'Reference', 'color': Colors.amberAccent},
      {'label': 'Short Stories', 'color': Colors.deepOrange}
    ];

    final items1 = [
      {'label': 'Art', 'onPressed': () {}},
      {'label': 'Biography', 'onPressed': () {}},
      {'label': 'Business', 'onPressed': () {}},
      {'label': 'Chick-lit', 'onPressed': () {}},
      {'label': 'Children\'s', 'onPressed': () {}},
      {'label': 'Christian', 'onPressed': () {}},
      {'label': 'Classics', 'onPressed': () {}},
    ];
    return Scaffold(
      appBar: AppbarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              TextButtonUnderlineWidget('expolre_by_genre'.tr, () {}),
              // _textButtonItem(context, ''),
              SizedBox(
                height: 10,
              ),
              Text(
                'see_new_releases'.tr,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 1.4),
                  itemBuilder: (BuildContext context, int index) {
                    final item = items[index];

                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                      child: GenresButtonWidget(
                          item['label'] as String, item['color'] as Color),
                    );
                  }
                  // GenresButtonWidget('Adventure')
                  ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: items1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, childAspectRatio: 7),
                  itemBuilder: (BuildContext context, int index) {
                    final item1 = items1[index];

                    return ButtonWidget(item1['label'] as String,
                        item1['onPressed'] as VoidCallback);
                  }
                  // GenresButtonWidget('Adventure')
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
