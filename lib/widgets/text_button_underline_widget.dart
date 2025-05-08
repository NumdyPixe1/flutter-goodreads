import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextButtonUnderlineWidget extends GetView {
  const TextButtonUnderlineWidget(this.titleButton, this.onPressedButton,
      {super.key});
  final String titleButton;
  final onPressedButton;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressedButton,
        child: Column(
          children: [
            Text(titleButton.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium?.copyWith()),
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
}
