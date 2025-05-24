import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextButtonWidget extends GetView {
  const TextButtonWidget(this.title, this.onPressed, {super.key});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(title.toUpperCase(),
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Color.fromRGBO(60, 143, 132, 1),
                fontWeight: FontWeight.bold)));
  }
}
