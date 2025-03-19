import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/app/app_controller.dart';

class AppPage extends GetView<AppController> {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(27, 27, 27, 1),
        // appBar: AppbarWidget(),
        body: Obx(() => IndexedStack(
              index: controller.selectedIndex,
              children: [
                Navigator(
                  //key: Get.nestedKey(0),
                  initialRoute: '/homelist',
                  onGenerateRoute: controller.onGenerateRoute,
                ),
                Navigator(
                  //key: Get.nestedKey(1),
                  initialRoute: '/mybookslist',
                  onGenerateRoute: controller.onGenerateRoute,
                ),
                Navigator(
                  //key: Get.nestedKey(2),
                  initialRoute: '/discoverlist',
                  onGenerateRoute: controller.onGenerateRoute,
                ),
                Navigator(
                  // key: Get.nestedKey(3),
                  initialRoute: '/searchlist',
                  onGenerateRoute: controller.onGenerateRoute,
                ),
                Navigator(),
              ],
            )),
        //***BottomNav***
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
                // BottomNavigationBarItem(
                //   label: 'More',
                //   icon: Icon(controller.selectedIndex == 4
                //       ? Icons.more_horiz
                //       : Icons.more_horiz_outlined),
                // ),
              ],
            )));
  }
}
