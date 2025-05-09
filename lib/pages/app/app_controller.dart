import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/nav_tabs/discover_list/discover_list_binding.dart';
import 'package:numdao_finalproject/pages/nav_tabs/discover_list/discover_list_page.dart';
import 'package:numdao_finalproject/pages/nav_tabs/home_list/home_list_binding.dart';
import 'package:numdao_finalproject/pages/nav_tabs/home_list/home_list_page.dart';
import 'package:numdao_finalproject/pages/nav_tabs/mybooks_list/mybooks_list_binding.dart';
import 'package:numdao_finalproject/pages/nav_tabs/mybooks_list/mybooks_list_page.dart';
import 'package:numdao_finalproject/pages/nav_tabs/search_list/search_list_binding.dart';
import 'package:numdao_finalproject/pages/nav_tabs/search_list/search_list_page.dart';
import 'package:numdao_finalproject/pages/notify/notify_binding.dart';
import 'package:numdao_finalproject/pages/notify/notify_page.dart';
import 'package:numdao_finalproject/pages/shelves_and_tag/shelves_binding.dart';
import 'package:numdao_finalproject/pages/shelves_and_tag/shelves_pages.dart';

class AppController extends GetxController {
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  void onBottomNavigationBarItemTap(int index) {
    if (selectedIndex == index) {
      final navKey = Get.keys[index];
      //หาตำแหน่ง route ของ user จาก nav stack
      String? currentRoute;
      navKey?.currentState?.popUntil((route) {
        currentRoute = route.settings.name;
        return true;
      });
      //หา root route
      String? rootRoute;
      switch (index) {
        case 0:
          rootRoute = '/homelist';
          break;
        case 1:
          rootRoute = '/mybookslist';
          break;
        case 2:
          rootRoute = '/discoverlist';
          break;
        case 3:
          rootRoute = '/searchlist';
          break;
        case 4:
        //   rootRoute = '/shelves';
        //   break;
        // case 5:
        //   rootRoute = '/notify';
        //   break;
      }

      //ดึงหน้า stack ออกไปทีล่ะอัน จนกว่าจะเจอ root route
      if (currentRoute != rootRoute) {
        navKey?.currentState?.popUntil((route) {
          return route.settings.name == rootRoute;
        });
      }
    } else {
      _selectedIndex.value = index;
    }
  }

  Route? onGenerateRoute(RouteSettings setting) {
    if (setting.name == HomeListPage.route) {
      return GetPageRoute(
          settings: setting,
          page: () => HomeListPage(),
          binding: HomeListBinding());
    }
    if (setting.name == MybooksListPage.route) {
      return GetPageRoute(
          settings: setting,
          page: () => MybooksListPage(),
          binding: MybooksListBinding());
    }
    if (setting.name == DiscoverListPage.route) {
      return GetPageRoute(
          settings: setting,
          page: () => DiscoverListPage(),
          binding: DiscoverListBinding());
    }
    if (setting.name == SearchListPage.route) {
      return GetPageRoute(
          settings: setting,
          page: () => SearchListPage(),
          binding: SearchListBinding());
    }
    if (setting.name == ShelvesPages.route) {
      return GetPageRoute(
          settings: setting,
          page: () => ShelvesPages(),
          binding: ShelvesBinding());
    }
    if (setting.name == NotifyPage.route) {
      return GetPageRoute(
          settings: setting,
          page: () => NotifyPage(),
          binding: NotifyBinding());
    }

    return null;
  }

  void onOpenPageInsideTabPressed() {
    Get.toNamed(NotifyPage.route, id: selectedIndex);
  }
  // void onNotifyPressed() {
  //   Get.toNamed('/notify');
  // }
}
