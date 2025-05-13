import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowLanguagesAlertWidget extends GetxController {
  void showLanguagesAlertWidget() {
    Get.dialog(SimpleDialog(
      title: Text('App Language'),
      contentPadding: EdgeInsets.all(20.0),
      children: [
        SimpleDialogOption(
          child: Text('English'),
          onPressed: () {},
        ),
        SimpleDialogOption(
          child: Text('日本語'),
          onPressed: () {},
        )
      ],
    ));
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return SimpleDialog(
//       title: Text('App Language'),
//       contentPadding: EdgeInsets.all(20.0),
//       children: [
//         SimpleDialogOption(
//           child: Text('English'),
//           onPressed: () {},
//         ),
//         SimpleDialogOption(
//           child: Text('日本語'),
//           onPressed: () {},
//         )
//       ],
//     );
//   }
// }
