import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/shelves_and_tags/shelves_controller.dart';

class ShelvesPages extends GetView<ShelvesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text(controller.context)],
      ),
    );
  }
}
