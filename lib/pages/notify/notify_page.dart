import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/notify/notify_controller.dart';

class NotifyPage extends GetView<NotifyController> {
  const NotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(27, 27, 27, 1),
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          bottom: TabBar(
              indicatorColor: Color.fromRGBO(60, 143, 132, 1),
              dividerColor: Color.fromRGBO(255, 255, 255, 0),
              tabs: [
                Text(
                  'notifications'.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Color.fromRGBO(254, 232, 208, 1)),
                ),
                Text(
                  'messages'.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Color.fromRGBO(254, 232, 208, 1)),
                ),
                Text(
                  'requests'.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Color.fromRGBO(254, 232, 208, 1)),
                )
              ]),
          backgroundColor: Color.fromRGBO(38, 37, 32, 1),
          title: Text(
            'Notifications Center',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
                iconSize: 25,
                color: Colors.white,
                onPressed: null,
                //controller.onNotifyPressed,
                icon: Icon(Icons.notifications_none_rounded))
          ],
        ),
        body: TabBarView(children: [
          Align(
            alignment: Alignment.topCenter,
            child: ListView(
              children: [
                _itemNoify(context, 'ม.ค. 25 at 22:00',
                    'Want to read more in 2025? Create a goal and Goodreads will help you stay on track'),
                _itemNoify(context, '6 ธ.ค. 2024 05:37',
                    'Announcing the winners of the 2024 Goodreads Choice Awards! Check out the champions and runners-up in all 15 categories now!')
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.9),
            child: Text('You have no messages.',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Color.fromARGB(128, 255, 255, 255))),
          ),
          Align(
              alignment: Alignment(0.0, -0.9),
              child: Text('You currently have no friend requests',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Color.fromARGB(128, 255, 255, 255))))
        ]),
        /*  floatingActionButton: IconButton(
          onPressed: controller.onBackPressed,
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,*/
      ),
    );
  }

  ListTile _itemNoify(
      BuildContext context, String notifyDate, String notifyTitle) {
    return ListTile(
      leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U')),
      subtitle: Text(notifyDate),
      title: Text(
        notifyTitle,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: Colors.white),
      ),
    );
  }
}
