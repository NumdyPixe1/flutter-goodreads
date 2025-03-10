import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/home/widgets/tabs/home_controller.dart';

class HomeWidget extends GetView<HomeController> {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
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
                14),
            _itemStatus(
                context,
                'เอกภพ สิทธิวรรณธนะ',
                'พฤ. at 17:15',
                'On Leadership: Lessons for the \n21st Century',
                'Tony Blair',
                'assets/images/books/2.jpg',
                18),
            _itemStatus(
                context,
                'Seamonkey',
                'อา. at 20:45',
                'บ้านพักใจโอบไออุ่นทะเล',
                'Akio Morisawa',
                'assets/images/books/3.jpg',
                14),
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
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
          color: Color.fromRGBO(40, 35, 31, 1),
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
                                  color: Colors.white,
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
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
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
                                ?.copyWith(
                                  color: Colors.white,
                                ),
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
                  TextButton(
                      onPressed: controller.onLikePressed,
                      child: Text('Like',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  color: Color.fromRGBO(60, 143, 132, 1)))),
                  TextButton(
                      onPressed: () {},
                      child: Text('Comment',
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
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        color: Color.fromRGBO(40, 35, 31, 1),
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
                                    color: Colors.white,
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w700),
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
                                    color: Colors.white,
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
                TextButton(
                    onPressed: controller.onLikePressed,
                    child: Text('Like',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Color.fromRGBO(60, 143, 132, 1)))),
                TextButton(
                    onPressed: () {},
                    child: Text('Comment',
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
