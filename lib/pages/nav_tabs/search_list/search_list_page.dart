import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/nav_tabs/search_list/search_list_controller.dart';
import 'package:numdao_finalproject/widgets/appbar_widget.dart';
import 'package:numdao_finalproject/widgets/text_button_underline_widget.dart';

class SearchListPage extends GetView<SearchListController> {
  const SearchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TextButtonUnderlineWidget('expolre by genre', () {}),
              // _textButtonItem(context, ''),
              SizedBox(
                height: 10,
              ),
              Text(
                'See new releases, most-read books, quotes, lists, and more in these popular genres.',
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
