import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostWidget extends GetView {
  const PostWidget(this.userName, this.dateUpdate, this.bookName,
      this.authorName, this.bookImage, this.sizeBookImage,
      {super.key});
  final String userName;
  final String dateUpdate;
  final String bookName;
  final String authorName;
  final String bookImage;
  final double sizeBookImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        color: Theme.of(context).colorScheme.surfaceContainer,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(8.0)),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U'),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(userName,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        color: Color.fromRGBO(60, 143, 132, 1),
                                        fontWeight: FontWeight.w700))),
                        Text(
                          'is reading',
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                  //color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(dateUpdate,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  color: Colors.grey,
                                ))
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(8.0)),
                Image.asset(scale: sizeBookImage, bookImage),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookName,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'by',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                  //color: Colors.white,
                                  ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(authorName,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        color:
                                            Color.fromRGBO(60, 143, 132, 1)))),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(49, 138, 90, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        child: Text('Want to Read',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    //color: Colors.white
                                    )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                TextButton(
                    onPressed: controller.onLikePressed,
                    child: Text('like'.tr,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Color.fromRGBO(60, 143, 132, 1)))),
                TextButton(
                    onPressed: () {},
                    child: Text('comment'.tr,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Color.fromRGBO(60, 143, 132, 1)))),
                Icon(
                    size: 20,
                    color: Color.fromRGBO(60, 143, 132, 1),
                    Icons.thumb_up),
                SizedBox(
                  width: 10,
                ),
                Obx(
                  () => Text(
                    '${controller.like}',
                    style: TextStyle(color: Color.fromRGBO(60, 143, 132, 1)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
