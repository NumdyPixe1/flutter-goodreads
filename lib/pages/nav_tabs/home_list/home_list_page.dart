import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/pages/nav_tabs/home_list/home_list_controller.dart';
import 'package:numdao_finalproject/services/models/post_item.dart';
import 'package:numdao_finalproject/widgets/appbar_widget.dart';
import 'package:numdao_finalproject/widgets/post_item_widget.dart';

class HomeListPage extends GetView<HomeListController> {
  const HomeListPage({super.key});
  static const route = '/homelist';

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        "userName": "เอกภพ สิทธิวรรณธนะ",
        "dateUpdate": "พฤ. at 17:15",
        "bookName": "On Leadership: Lessons for the \n21st Century",
        "authorName": "Tony Blair",
        "bookImage": "assets/images/books/2.jpg",
        "sizeBookImage": 18,

        // "url": controller.avatarList[1]['download_url']
      },
      {
        "userName": "Seamonkey",
        "dateUpdate": "อา. at 20:45",
        "bookName": "บ้านพักใจโอบไออุ่นทะเล",
        "authorName": "Akio Morisawa",
        "bookImage": "assets/images/books/3.jpg",
        "sizeBookImage": 14,
        // "url": controller.avatarList[1]['download_url']
      },
      {
        "userName": "NumdyPixe1",
        "dateUpdate": "ส. at 00:00",
        "bookName": "One Piece, \nVolume 1: Romance Dawn",
        "authorName": "Oda, Eiichiro",
        "bookImage": "assets/images/books/7.jpg",
        "sizeBookImage": 3,
        // "url": controller.avatarList[1]['download_url']
      }
    ];
    return Scaffold(
      appBar: AppbarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _itemRated(
                context,
                'Kanin Nitiwong',
                'ส. at 17:22',
                'ชีวิตน่ะ...ไม่ต้องพยายามไปซะทุกเรื่องหรอกนะ',
                'ไทระ โคเก็น, ภาณุพันธ์ ปัญญาใจ',
                'assets/images/books/1.jpg',
                14,
                3),
            ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = items[index];
                return _itemStatus(
                    context,
                    item['userName'] as String,
                    item['dateUpdate'] as String,
                    item['bookName'] as String,
                    item['authorName'] as String,
                    item['bookImage'] as String,
                    item['sizeBookImage'] as double,
                    index);
              },
            ),

            //PostItemWidget(item: item)
          ],
        ),
      ),
    );
  }

  Padding _itemRated(
      BuildContext context,
      String userName,
      String dateUpdate,
      String bookName,
      String authorName,
      String bookImage,
      double sizeBookImage,
      int index) {
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
                                          color:
                                              Color.fromRGBO(60, 143, 132, 1),
                                          fontWeight: FontWeight.w700))),
                          Text(
                            'rated it',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    //color: Colors.white,
                                    ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //Star Icon
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          )
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
                      SizedBox(
                        width: 240,
                        child: Text(
                          bookName,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w700),
                          // color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            'by ',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(authorName,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          color: Color.fromRGBO(
                                              60, 143, 132, 1)))),
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
                                  ?.copyWith(color: Colors.white)),
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
                  Obx(() => TextButton(
                      onPressed: () => controller.toggleLike(index),
                      child: Text(
                          controller.isLiked(index) ? 'Unlike'.tr : 'like'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  color: Color.fromRGBO(60, 143, 132, 1))))),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Comment'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
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
                      controller.likeCount(index).toString(),
                      style: TextStyle(color: Color.fromRGBO(60, 143, 132, 1)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              )
            ],
          )),
    );
  }

  Padding _itemStatus(
      BuildContext context,
      String userName,
      String dateUpdate,
      String bookName,
      String authorName,
      String bookImage,
      double sizeBookImage,
      int index) {
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
                Obx(
                  () {
                    //Loading
                    if (controller.isLoading.value ||
                        controller.avatarList.isEmpty) {
                      return const CircleAvatar(
                        radius: 24,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      );
                    } else {
                      //Load Completed
                      return CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(
                          controller.avatarList[5]['download_url'],
                        ),
                      );
                    }
                  },
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
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
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
                                ?.copyWith(color: Colors.white)),
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
                Obx(() => TextButton(
                    onPressed: () => controller.toggleLike(index),
                    child: Text(
                        controller.isLiked(index) ? 'Unlike'.tr : 'like'.tr,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Color.fromRGBO(60, 143, 132, 1))))),
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
                    controller.likeCount(index).toString(),
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
