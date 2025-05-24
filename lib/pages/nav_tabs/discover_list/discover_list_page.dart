import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/nav_tabs/discover_list/discover_list_controller.dart';
import 'package:numdao_finalproject/widgets/ad_widget.dart';
import 'package:numdao_finalproject/widgets/appbar_widget.dart';
import 'package:numdao_finalproject/widgets/button_widget.dart';
import 'package:numdao_finalproject/widgets/elevated_button_widget.dart';
import 'package:numdao_finalproject/widgets/text_button_underline_widget.dart';
import 'package:numdao_finalproject/widgets/text_button_widget.dart';

class DiscoverListPage extends GetView<DiscoverListController> {
  const DiscoverListPage({super.key});
  static const route = '/discoverlist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
            ),
            TextButtonUnderlineWidget('news and interviews', () {}),
            TextButtonWidget('see more posts', () {}),
            Divider(),
            TextButtonUnderlineWidget('featured lists', () {}),
            ElevatedButtonWidget('show more lists', 40),
            SizedBox(height: 20),
            AdWidget(),
            SizedBox(height: 20),
            TextButtonUnderlineWidget('keep exploring', () {}),
            ButtonWidget('Giveaways', () {}),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
