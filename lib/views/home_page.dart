import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 62,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 23, 29, 37),
          leading: IconButton(
              onPressed: null, icon: Image.asset('images/hamburger.png')),
          title: Container(width: 171, child: Image.asset('images/logo.png')),
        ),
        backgroundColor: Color.fromARGB(255, 27, 40, 56),
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 62, 103, 150),
                    Color.fromARGB(255, 58, 120, 177),
                    Color.fromARGB(255, 15, 33, 110)
                  ])),
                  child: Text('ร้านค้าของคุณ'),
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(96, 133, 155, 0.979),
                      hintText: ('ค้นหา'),
                      hintStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      )),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Color.fromARGB(255, 228, 19, 19),
                  height: 200,
                  child: Text(
                    'โดดเด่นและแนะนำ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
