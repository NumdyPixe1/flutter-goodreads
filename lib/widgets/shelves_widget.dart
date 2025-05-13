import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShelvesWidget extends GetView {
  const ShelvesWidget(
      this.title, this.subtitle, this.book1, this.book2, this.book3,
      {super.key});
  final String title;
  final String subtitle;
  final String book1;
  final String book2;
  final String book3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_listItem(title, subtitle, book1, book2, book3, context)],
    );
  }
}

Widget bookImage(String imagePath) {
  return ClipRRect(
    child: Image.asset(imagePath, width: 50, height: 70, fit: BoxFit.cover),
  );
}

InkWell _listItem(String title, String subtitle, String book1, String book2,
    String book3, context) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade800)),
      ),
      child: Row(
        children: [
          Transform.translate(
            offset: Offset(0, 0),
            child: bookImage(book1),
          ),
          Transform.translate(
            offset: Offset(-10, 0),
            child: bookImage(book2),
          ),
          Transform.translate(
            offset: Offset(-20, 0),
            child: bookImage(book3),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  // color: Colors.white,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith()),
              Text(subtitle,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith()),
            ],
          ),
        ],
      ),
    ),
  );
}
