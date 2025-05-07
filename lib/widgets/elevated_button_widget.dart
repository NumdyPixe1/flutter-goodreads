import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ElevatedButtonWidget extends GetView {
  const ElevatedButtonWidget(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
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
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: Color.fromRGBO(254, 232, 208, 1)),
      ),
    );
  }
}
