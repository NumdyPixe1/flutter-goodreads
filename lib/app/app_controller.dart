import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/nav_tabs/discover_list/discover_list_binding.dart';
import 'package:numdao_finalproject/nav_tabs/discover_list/discover_list_page.dart';
import 'package:numdao_finalproject/nav_tabs/home_list/home_list_binding.dart';
import 'package:numdao_finalproject/nav_tabs/home_list/home_list_page.dart';
import 'package:numdao_finalproject/nav_tabs/mybooks_list/mybooks_list_binding.dart';
import 'package:numdao_finalproject/nav_tabs/mybooks_list/mybooks_list_page.dart';
import 'package:numdao_finalproject/nav_tabs/search_list/search_list_binding.dart';
import 'package:numdao_finalproject/nav_tabs/search_list/search_list_page.dart';
import 'package:numdao_finalproject/shelves_and_tags/shelves_binding.dart';
import 'package:numdao_finalproject/shelves_and_tags/shelves_pages.dart';

class AppController extends GetxController {
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  void onBottomNavigationBarItemTap(int index) {
    _selectedIndex.value = index;
  }

  void onNotifyPressed() {
    Get.toNamed('/notify');
  }

  Route? onGenerateRoute(RouteSettings setting) {
    if (setting.name == '/homelist') {
      return GetPageRoute(
          settings: setting,
          page: () => HomeListPage(),
          binding: HomeListBinding());
    }
    if (setting.name == '/mybookslist') {
      return GetPageRoute(
          settings: setting,
          page: () => MybooksListPage(),
          binding: MybooksListBinding());
    }
    if (setting.name == '/discoverlist') {
      return GetPageRoute(
          settings: setting,
          page: () => DiscoverListPage(),
          binding: DiscoverListBinding());
    }
    if (setting.name == '/searchlist') {
      return GetPageRoute(
          settings: setting,
          page: () => SearchListPage(),
          binding: SearchListBinding());
    }
    if (setting.name == '/searchlist') {
      return GetPageRoute(
          settings: setting,
          page: () => SearchListPage(),
          binding: SearchListBinding());
    }
    if (setting.name == '/shelves') {
      return GetPageRoute(
          settings: setting,
          page: () => ShelvesPages(),
          binding: ShelvesBinding());
    }

    return null;
  }
}
