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
      children: [
        _listItem(title, subtitle, book1, book2, book3)
        // _listItem('Read', '23 books', 'assets/images/books/4.jpg',
        //     'assets/images/books/8.jpg', 'assets/images/books/9.jpg'),
        // _listItem(
        //   'Currently Reading',
        //   '10 books',
        //   'assets/images/books/7.jpg',
        //   'assets/images/books/2.jpg',
        //   'assets/images/books/11.jpg',
        // ),
        // _listItem('Want to Read', '18 books', 'assets/images/books/1.jpg',
        //     'assets/images/books/10.jpg', 'assets/images/books/3.jpg'),
        // _listItem('Manga', '8 books', 'assets/images/books/5.jpg',
        //     'assets/images/books/6.jpg', 'assets/images/books/7.jpg')
      ],
    );
  }
}

Widget bookImage(String imagePath) {
  return ClipRRect(
    child: Image.asset(imagePath, width: 50, height: 70, fit: BoxFit.cover),
  );
}

InkWell _listItem(
    String title, String subtitle, String book1, String book2, String book3) {
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
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.white70, fontSize: 14),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
