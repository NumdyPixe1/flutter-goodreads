import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numdao_finalproject/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
      //     ]),
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
      appBar: AppBar(
        // toolbarHeight: 70,
        backgroundColor: Color.fromRGBO(40, 35, 31, 1),
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Title,author or ISBN',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                filled: true,
                fillColor: Color.fromRGBO(27, 27, 27, 1)),
            style: TextStyle(color: Color.fromRGBO(42, 42, 42, 1)),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none_rounded,
              size: 32,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //1
            Padding(
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
                                      child: Text('Kanin Nitiwong',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                                  color: Color.fromRGBO(
                                                      60, 143, 132, 1),
                                                  fontWeight:
                                                      FontWeight.w700))),
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
                                  Text(' ส. at 17:22',
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
                          Image.asset(scale: 14, 'assets/images/books/1.jpg'),
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
                                  'ชีวิตน่ะ...ไม่ต้องพยายามไปซะทุกเรื่องหรอกนะ',
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
                                      child: Text(
                                          'ไทระ โคเก็น, ภาณุพันธ์ ปัญญาใจ',
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
                                    backgroundColor:
                                        Color.fromRGBO(49, 138, 90, 1),
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
                              onPressed: () {},
                              child: Text('Like',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          color: Color.fromRGBO(
                                              60, 143, 132, 1)))),
                          TextButton(
                              onPressed: () {},
                              child: Text('Comment',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          color: Color.fromRGBO(
                                              60, 143, 132, 1)))),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  )),
            ),
            //2
            Padding(
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
                                    child: Text('เอกภพ สิทธิวรรณธนะ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall
                                            ?.copyWith(
                                                color: Color.fromRGBO(
                                                    60, 143, 132, 1),
                                                fontWeight: FontWeight.w700))),
                                Text(
                                  'is reading',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(' พฤ. at 17:15',
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
                        Image.asset(scale: 18, 'assets/images/books/2.jpg'),
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
                                'On Leadership: Lessons for the 21st Century',
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
                                    child: Text('Tony Blair',
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
                                  backgroundColor:
                                      Color.fromRGBO(49, 138, 90, 1),
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
                            onPressed: () {},
                            child: Text('Like',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        color:
                                            Color.fromRGBO(60, 143, 132, 1)))),
                        TextButton(
                            onPressed: () {},
                            child: Text('Comment',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        color:
                                            Color.fromRGBO(60, 143, 132, 1))))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            ),
            //3
            Padding(
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
                                    child: Text('Seamonkey',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall
                                            ?.copyWith(
                                                color: Color.fromRGBO(
                                                    60, 143, 132, 1),
                                                fontWeight: FontWeight.w700))),
                                Text(
                                  'is reading',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(' อา. at 20:45',
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
                        Image.asset(scale: 14, 'assets/images/books/3.jpg'),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'บ้านพักใจโอบไออุ่นทะเล',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Text(
                                  'by',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Akio Morisawa',
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
                                  backgroundColor:
                                      Color.fromRGBO(49, 138, 90, 1),
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
                            onPressed: () {},
                            child: Text('Like',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        color:
                                            Color.fromRGBO(60, 143, 132, 1)))),
                        TextButton(
                            onPressed: () {},
                            child: Text('Comment',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        color:
                                            Color.fromRGBO(60, 143, 132, 1))))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
