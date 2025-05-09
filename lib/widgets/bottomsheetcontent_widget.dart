import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomsheetcontentWidget extends GetView {
  const BottomsheetcontentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'icon': Icons.person,
        'label': 'My profile',
      },
      {'icon': Icons.group, 'label': 'Friends'},
      {'icon': Icons.groups, 'label': 'Groups'},
      {'icon': Icons.menu_book, 'label': 'Reading Challenge'},
      {'icon': Icons.card_giftcard, 'label': 'Giveaways'},
      {'icon': Icons.star_border, 'label': 'Top picks for you'},
      {'icon': Icons.emoji_events, 'label': '2024 Choice Awards'},
      {'icon': Icons.camera_alt, 'label': 'Scan books'},
      {'icon': Icons.settings, 'label': 'Settings'},
      {'icon': Icons.help_outline, 'label': 'Help'},
    ];
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Wrap(
        children: [
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              childAspectRatio: 0.85,
            ),
            itemBuilder: (context, index) {
              final item = items[index];
              return _gesturedetector();
              // GestureDetector(
              //   onTap: () {
              //     print('กดแล้ว!');
              //   },
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       CircleAvatar(
              //         radius: 36,
              //         backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              //         child: Icon(item['icon'] as IconData,
              //             color: Colors.orangeAccent, size: 28),
              //       ),
              //       const SizedBox(height: 8),
              //       Text(
              //         item['label'] as String,
              //         style: const TextStyle(color: Colors.white, fontSize: 16),
              //         textAlign: TextAlign.center,
              //       ),
              //     ],
              //   ),
              // );
            },
          ),
        ],
      ),
    );
  }

  GestureDetector _gesturedetector() {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [],
      ),
    );
  }
}
