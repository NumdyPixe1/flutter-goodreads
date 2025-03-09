import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/home/widgets/appbar_widget.dart';
import 'package:numdao_finalproject/home/app_controller.dart';
import 'package:numdao_finalproject/home/widgets/bottom_nav_widget.dart';
import 'package:numdao_finalproject/home/widgets/tabs/discover_widget.dart';
import 'package:numdao_finalproject/home/widgets/tabs/home_widget.dart';
import 'package:numdao_finalproject/home/widgets/tabs/more_widget.dart';
import 'package:numdao_finalproject/home/widgets/tabs/mybooks_widget.dart';
import 'package:numdao_finalproject/home/widgets/tabs/search_widget.dart';

class AppPage extends GetView<AppController> {
  const AppPage({super.key});

  final _bodies = const [
    HomeWidget(),
    MybooksWidget(),
    DiscoverWidget(),
    SearchWidget(),
    MoreWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(27, 27, 27, 1),
        appBar: AppbarWidget(),
        body: Obx(() => _bodies[controller.selectedIndex]),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.selectedIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              onTap: controller.onBottomNavigationBarItemTap,
              backgroundColor: Color.fromRGBO(40, 35, 31, 1),
              items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(controller.selectedIndex == 0
                      ? Icons.home
                      : Icons.home_outlined),
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
                    icon: Icon(controller.selectedIndex == 4
                        ? Icons.more_horiz
                        : Icons.more_horiz_outlined))
              ],
            ))
        //Obx(() => BottomNavigationWidget()),
        );
  }
}
