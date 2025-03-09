import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MybooksWidget extends GetView {
  const MybooksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('shelves'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white)),
            TextButton(
                onPressed: () {}, child: Text('Update yoyr reading progress')),
            TextButton(onPressed: () {}, child: Text('See all'.toUpperCase())),
            Text('tags'.toUpperCase()),
          ],
        ),
      ),
    );
  }
}
