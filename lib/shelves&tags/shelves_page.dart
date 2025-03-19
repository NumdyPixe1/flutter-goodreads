import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/shelves&tags/shelves_controller.dart';

class ShelvesPage extends GetView<ShelvesController> {
  const ShelvesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: Color.fromRGBO(40, 35, 31, 1),
        title: Text('All shelves & tags',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                )),
      ),

      // _listItem('Read', '23 books', 'assets/images/books/4.jpg'),
      // _listItem(
      //     'Currently Reading', '10 books', 'assets/images/books/4.jpg'),
      // _listItem('Want to Read', '18 books', 'assets/images/books/4.jpg')
    );
  }
}



// InkWell _listItem(String title, String subtitle, String imagePath) {
//     return InkWell(
//       onTap: () {},
//       child: Container(
//         padding: EdgeInsets.all(12),
//         decoration: BoxDecoration(
//           border: Border(bottom: BorderSide(color: Colors.grey.shade800)),
//         ),
//         child: Row(
//           children: [
//             ClipRect(
//               child: Image.asset(
//                 imagePath,
//                 width: 50,
//                 height: 70,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(width: 12),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(color: Colors.white, fontSize: 14),
//                 ),
//                 Text(
//                   subtitle,
//                   style: TextStyle(color: Colors.white70, fontSize: 14),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

