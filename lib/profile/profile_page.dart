import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 36,
                backgroundImage: NetworkImage(
                    'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U')),
            SizedBox(
              height: 20,
            ),
            Text('NumdyPixe1',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('51 book',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white)),
                SizedBox(
                  width: 20,
                ),
                Text('3 friends',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white))
              ],
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.edit),
                label: Text('Settings'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Color.fromRGBO(60, 143, 132, 1)))),
          ],
        ),
      ),
    );
  }
}
