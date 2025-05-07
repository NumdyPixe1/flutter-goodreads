import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/nav_tabs/search_list/search_list_controller.dart';
import 'package:numdao_finalproject/widgets/appbar_widget.dart';

class SearchListPage extends GetView<SearchListController> {
  const SearchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              _textButtonItem(context, 'expolre by genre'),
              SizedBox(
                height: 10,
              ),
              Text(
                'See new releases, most-read books, quotes, lists, and more in these popular genres.',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white),
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
