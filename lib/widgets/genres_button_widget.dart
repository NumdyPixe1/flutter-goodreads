import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenresButtonWidget extends GetView {
  const GenresButtonWidget(this.title, this.color, {super.key});
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 30,
              ),
              child: Column(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
