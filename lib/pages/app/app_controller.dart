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
    if (index == 4) {
      onOpenMorePageInsideTabPressed();
      return;
    }
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

  void onOpenNotifyPageInsideTabPressed() {
    Get.toNamed(NotifyPage.route, id: selectedIndex);
  }

//--------------------------------------------------------
  final items = [
    {
      'icon': Icons.person_outline,
      'label': 'My profile',
    },
    {'icon': Icons.group_add_outlined, 'label': 'Friends', 'route': '(){}'},
    {'icon': Icons.groups_3_outlined, 'label': 'Groups', 'route': '(){}'},
    {
      'icon': Icons.menu_book_outlined,
      'label': 'Reading Challenge',
      'route': '(){}'
    },
    {
      'icon': Icons.card_giftcard_outlined,
      'label': 'Giveaways',
      'route': '(){}'
    },
    {
      'icon': Icons.star_border_outlined,
      'label': 'Top picks for you',
      'route': '(){}'
    },
    {
      'icon': Icons.emoji_events_outlined,
      'label': '2024 Choice Awards',
      'route': '(){}'
    },
    {'icon': Icons.camera_alt_outlined, 'label': 'Scan books', 'route': '(){}'},
    {'icon': Icons.settings_outlined, 'label': 'Settings', 'route': '() {}'},
    {'icon': Icons.help_outline, 'label': 'Help', 'route': '(){}'},
  ];
  void onOpenMorePageInsideTabPressed() {
    Get.bottomSheet(
      Container(
          height: 500,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.all(24),
              child: GridView.builder(
                  itemCount: items.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.85,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final item = items[index];
                    return GestureDetector(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 36,
                            child: Icon(item['icon'] as IconData,
                                color: Colors.orangeAccent, size: 28),
                          ),
                          SizedBox(height: 8),
                          Text(
                            item['label'] as String,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }))),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
      ),
      isScrollControlled: false,
    );
  }
}
