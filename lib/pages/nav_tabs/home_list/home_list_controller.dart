import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeListController extends GetxController {
  var like = 0.obs;
  final dio = Dio();
  var isLoading = true.obs;

  final api = 'https://picsum.photos/v2/list?limit=5';

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
        print(avatarList);
      } else {
        throw Exception('Failed');
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  void onLikePressed() {
    ++like;
  }
}
