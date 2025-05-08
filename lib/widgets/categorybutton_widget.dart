import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategorybuttonWidget extends GetView {
  const CategorybuttonWidget(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return _categorybuttonItem(context, title);
  }

  InkWell _categorybuttonItem(context, String title) {
    return InkWell(
      onTap: () {},
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
      ),
    );
  }
}
