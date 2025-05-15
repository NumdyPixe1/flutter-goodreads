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
        'onPressed': () {}
      },
      {'icon': Icons.groups_3_outlined, 'label': 'Groups', 'onPressed': () {}},
      {
        'icon': Icons.menu_book_outlined,
        'label': 'Reading Challenge',
        'onPressed': () {}
      },
      {
        'icon': Icons.card_giftcard_outlined,
        'label': 'Giveaways',
        'onPressed': () {}
      },
      {
        'icon': Icons.star_border_outlined,
        'label': 'Top picks for you',
        'onPressed': () {}
      },
      {
        'icon': Icons.emoji_events_outlined,
        'label': '2024 Choice Awards',
        'onPressed': () {}
      },
      {
        'icon': Icons.camera_alt_outlined,
        'label': 'Scan books',
        'onPressed': () {}
      },
      {
        'icon': Icons.settings_outlined,
        'label': 'Settings',
        'onPressed': controller.onOpenSettingsPageInsideTabPressed
      },
      {'icon': Icons.help_outline, 'label': 'Help', 'onPressed': () {}},
    ];

    return Container(
        height: MediaQuery.of(context).size.height * 0.66,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(4),
            child: GridView.builder(
                itemCount: items.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //จำนวนแถว
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
