import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/app/app_controller.dart';

class BottomSheetWidget extends GetView<AppController> {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': Icons.person_outline, 'label': 'My profile', 'onPressed': () {}},
      {
        'icon': Icons.group_add_outlined,
        'label': 'Friends',
        'onPressed': () {
          Get.back();
        }
      },
      {'icon': Icons.groups_3_outlined, 'label': 'Groups', 'onPressed': () {}},
      {
        'icon': Icons.menu_book_outlined,
        'label': 'Reading Challenge',
        'onPressed': () {
          Get.back();
        }
      },
      {
        'icon': Icons.card_giftcard_outlined,
        'label': 'Giveaways',
        'onPressed': () {
          Get.back();
        }
      },
      {
        'icon': Icons.star_border_outlined,
        'label': 'Top picks for you',
        'onPressed': () {
          Get.back();
        }
      },
      {
        'icon': Icons.emoji_events_outlined,
        'label': '2024 Choice Awards',
        'onPressed': () {
          Get.back();
        }
      },
      {
        'icon': Icons.camera_alt_outlined,
        'label': 'Scan books',
        'onPressed': () {
          Get.back();
        }
      },
      {
        'icon': Icons.settings_outlined,
        'label': 'Settings',
        'onPressed': controller.onOpenSettingsPageInsideTabPressed
      },
      {
        'icon': Icons.help_outline,
        'label': 'Help',
        'onPressed': () {
          Get.back();
        }
      },
    ];

    return Container(
        height: MediaQuery.of(context).size.height * 0.66,
        color: Theme.of(context).colorScheme.surface,
        width: double.infinity,
        child: Padding(
            padding: EdgeInsets.all(4),
            child: GridView.builder(
                itemCount: items.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  childAspectRatio: 1,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final item = items[index];
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    onPressed: item['onPressed'] as VoidCallback,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 36,
                          child: Icon(item['icon'] as IconData,
                              color: Colors.orangeAccent, size: 28),
                        ),
                        SizedBox(height: 2),
                        Text(item['label'] as String,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontWeight: FontWeight.bold))
                      ],
                    ),
                  );
                })));
  }
}
