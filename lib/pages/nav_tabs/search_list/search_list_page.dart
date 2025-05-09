import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/nav_tabs/search_list/search_list_controller.dart';
import 'package:numdao_finalproject/widgets/appbar_widget.dart';
import 'package:numdao_finalproject/widgets/text_button_underline_widget.dart';

class SearchListPage extends GetView<SearchListController> {
  const SearchListPage({super.key});
  static const route = '/searchlist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
