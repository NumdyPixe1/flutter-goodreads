import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidget extends GetView {
  const ButtonWidget(this.title, this.onPressed, {super.key});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 55,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(width: 12),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
                Divider(height: 1, color: Colors.grey.shade300, thickness: 1),
              ],
            )));
  }
}
