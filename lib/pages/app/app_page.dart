import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/app/app_controller.dart';
import 'package:numdao_finalproject/pages/nav_tabs/discover_list/discover_list_page.dart';
import 'package:numdao_finalproject/pages/nav_tabs/home_list/home_list_page.dart';
import 'package:numdao_finalproject/pages/nav_tabs/mybooks_list/mybooks_list_page.dart';
import 'package:numdao_finalproject/pages/nav_tabs/search_list/search_list_page.dart';

class AppPage extends GetView<AppController> {
  const AppPage({super.key});
  static const route = '/app';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //floatingActionButton: MoreWidget(),
        body: Obx(() => IndexedStack(
              index: controller.selectedIndex,
              children: [
                Navigator(
                  key: Get.nestedKey(0),
                  initialRoute: HomeListPage.route,
                  onGenerateRoute: controller.onGenerateRoute,
                ),
                Navigator(
                  key: Get.nestedKey(1),
                  initialRoute: MybooksListPage.route,
                  onGenerateRoute: controller.onGenerateRoute,
                ),
                Navigator(
                  key: Get.nestedKey(2),
                  initialRoute: DiscoverListPage.route,
                  onGenerateRoute: controller.onGenerateRoute,
                ),
                Navigator(
                  key: Get.nestedKey(3),
                  initialRoute: SearchListPage.route,
                  onGenerateRoute: controller.onGenerateRoute,
                ),

                // ElevatedButton(
                //     onPressed: controller.onMorePressed, child: Text(''))
              ],
            )),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              onTap: controller.onBottomNavigationBarItemTap,
              currentIndex: controller.selectedIndex,
              type: BottomNavigationBarType.fixed,
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
            )));
  }
}
