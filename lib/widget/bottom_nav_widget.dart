import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/home/home_controller.dart';

class BottomNavWidget extends GetView<HomeController> {
  final _title = [
    Text('Home'),
    Text('My Books'),
    Text('Discover'),
    Text('Search'),
    Text('More')
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        const BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'My Books', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'Discover', icon: Icon(Icons.home)),
        //BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.home)),
        //BottomNavigationBarItem(label: 'More', icon: Icon(Icons.home))
      ],
      currentIndex: controller.selectedIndex,
      onTap: null,
    );
  }
}
