import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MybooksWidget extends GetView {
  const MybooksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('shelves'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white)),
            _elevatedButtonItem(context, 'Update yoyr reading progress'),
            Divider(),
            TextButton(
                onPressed: () {},
                child: Text('See all'.toUpperCase(),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color.fromRGBO(60, 143, 132, 1),
                        fontWeight: FontWeight.bold))),
            Divider(),
            Text('tags'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white)),
            Divider(),
            TextButton(
                onPressed: () {},
                child: Text('See all'.toUpperCase(),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color.fromRGBO(60, 143, 132, 1),
                        fontWeight: FontWeight.bold))),
            Divider(
              color: Color.fromRGBO(255, 255, 255, 0.50),
            ),
            _elevatedButtonItem(context, '+ Create a new tag or shelf'),
          ],
        ),
      ),
    );
  }

  ElevatedButton _elevatedButtonItem(BuildContext context, String titleButton) {
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
      child: Text(titleButton,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Color.fromRGBO(254, 232, 208, 1))),
    );
  }
}
