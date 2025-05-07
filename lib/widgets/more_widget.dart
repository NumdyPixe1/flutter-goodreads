import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/widgets/bottomsheetcontent_widget.dart';

class MoreWidget extends GetView {
  const MoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {
      Get.bottomSheet(
        const BottomsheetcontentWidget(),
        backgroundColor: Color.fromRGBO(27, 27, 27, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
        ),
        isScrollControlled: true,
      );
    });
  }
}
