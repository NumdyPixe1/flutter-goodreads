import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeListController extends GetxController {
  final dio = Dio();
  var isLoading = true.obs;

  final api = 'https://picsum.photos/v2/list?limit=10';

  late List avatarList = [];

  @override
  void onInit() {
    super.onInit();
    // Specify the base path to your mock files

    avatarPost();
  }

  Future<void> avatarPost() async {
    try {
      isLoading.value = true;

      final response = await dio.get(api);
      if (response.statusCode == 200) {
        avatarList = response.data;
        //print(avatarList);
      } else {
        throw Exception('Failed');
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

//map like
  var likedMap = <int, bool>{}.obs;
  var likeCountMap = <int, int>{}.obs;

  void toggleLike(int id) {
    //ยังไม่กดไลก์ = false
    final isLiked = likedMap[id] ?? false;
    //กดไลก์ = true
    likedMap[id] = !isLiked;

    // เพิ่มหรือลดจำนวนไลก์
    if (!isLiked) {
      likeCountMap[id] = (likeCountMap[id] ?? 0) + 1;
    } else {
      likeCountMap[id] = (likeCountMap[id] ?? 1) - 1;
    }
  }

//กดไลก์แล้วคืนใหม่ สำหรับ id อื่น
  bool isLiked(int id) => likedMap[id] ?? false;

  int likeCount(int id) => likeCountMap[id] ?? 0;
}
