import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/app/app_controller.dart';

class AppbarWidget extends GetView<AppController>
    implements PreferredSizeWidget {
  const AppbarWidget({super.key});
  //ลืม
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(40, 35, 31, 1),
      title: SizedBox(
        height: 40,
        child: TextField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(0, 255, 255, 255))),
              hintText: 'Title,author or ISBN',
              hintStyle: TextStyle(color: Color.fromRGBO(143, 143, 143, 1)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              filled: true,
              fillColor: Color.fromRGBO(27, 27, 27, 1)),
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
      actions: <Widget>[
        IconButton(
            iconSize: 25,
            color: Colors.white,
            onPressed: controller.onNotifyPressed,
            icon: Icon(Icons.notifications_none_rounded))
      ],
    );
  }
}
