// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:numdao_finalproject/widgets/shelves_widget_controller.dart';

// class ShelvesWidget extends GetView<ShelvesWidgetController> {
//   const ShelvesWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: InkWell(
//         onTap: () {},
//         child: Container(
//           padding: EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             border: Border(bottom: BorderSide(color: Colors.grey.shade800)),
//           ),
//           child: Row(
//             children: [
//               Transform.translate(
//                 offset: Offset(0, 0),
//                 child: bookImage(book1),
//               ),
//               Transform.translate(
//                 offset: Offset(-10, 0),
//                 child: bookImage(book2),
//               ),
//               Transform.translate(
//                 offset: Offset(-20, 0),
//                 child: bookImage(book3),
//               ),
//               SizedBox(width: 12),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(color: Colors.white, fontSize: 14),
//                   ),
//                   Text(
//                     subtitle,
//                     style: TextStyle(color: Colors.white70, fontSize: 14),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget bookImage(String imagePath) {
//   return ClipRRect(
//     child: Image.asset(imagePath, width: 50, height: 70, fit: BoxFit.cover),
//   );
// }
