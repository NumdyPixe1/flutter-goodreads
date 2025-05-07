import 'package:get/get.dart';
import 'package:numdao_finalproject/services/models/post_item.dart';
import 'package:numdao_finalproject/services/post_service.dart';

class PostServiceMock extends GetxService implements PostService {
  late List<PostItem> _items;
  @override
  void onInit() {
    _items = [
      PostItem(
          ownerName: 'Kanin Nitiwong',
          ownerImage: 'assets/avatars/kanin',
          bookTitle: 'ชีวิตน่ะ...ไม่ต้องพยายามไปซะทุกเรื่องหรอกนะ',
          authorName: "ไทระ โคเก็น, ภาณุพันธ์ ปัญญาใจ",
          bookImage: 'assets/images/books/1.jpg',
          like: 20,
          createdDate: "ส. at 17:22",
          sizeBookImage: 1),
      PostItem(
          ownerName: 'เอกภพ สิทธิวรรณธนะ',
          ownerImage: 'assets/avatars/kanin',
          bookTitle: 'On Leadership: Lessons for the \n21st Century',
          authorName: "Tony Blair",
          bookImage: 'assets/images/books/2.jpg',
          like: 5,
          createdDate: "พฤ. at 17:15",
          sizeBookImage: 1),
      PostItem(
          ownerName: 'Seamonkey',
          ownerImage: 'assets/avatars/kanin',
          bookTitle: 'บ้านพักใจโอบไออุ่นทะเล',
          authorName: "Akio Morisawa",
          bookImage: 'assets/images/books/3.jpg',
          like: 2,
          createdDate: "อา. at 20:45",
          sizeBookImage: 1)
    ];
    super.onInit();
  }

  @override
  Future<List<PostItem>> getPostItems(
      {int pageIndex = 1, int pageSize = 3}) async {
    await 3.delay();

    var results = <PostItem>[];
    var index = (pageIndex - 1) * pageSize;
    while (index < _items.length) {
      results.add(_items[index]);
      if (results.length == pageSize) {
        break;
      }
      index++;
    }
    return results;
  }
}
