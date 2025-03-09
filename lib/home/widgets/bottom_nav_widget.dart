import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/home/app_controller.dart';

class BottomNavigationWidget extends GetView<AppController> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: controller.selectedIndex,
      selectedItemColor: Colors.white,
      onTap: controller.onBottomNavigationBarItemTap,
      backgroundColor: Color.fromRGBO(40, 35, 31, 1),
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
              controller.selectedIndex == 0 ? Icons.home : Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          label: 'My Books',
          icon: Icon(controller.selectedIndex == 1
              ? Icons.collections_bookmark
              : Icons.collections_bookmark_outlined),
        ),
        BottomNavigationBarItem(
            label: 'Discover',
            icon: Icon(controller.selectedIndex == 2
                ? Icons.compass_calibration
                : Icons.compass_calibration_outlined)),
        BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(controller.selectedIndex == 3
                ? Icons.search
                : Icons.search_outlined)),
        BottomNavigationBarItem(
            label: 'More',
            icon: Icon(controller.selectedIndex == 3
                ? Icons.more_horiz
                : Icons.more_horiz_outlined))
      ],
    );
  }
}
