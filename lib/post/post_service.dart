import 'package:numdao_finalproject/post/post_item.dart';

abstract class PostService {
  Future<List<PostItem>> getPostItems({int pageIndex = 1, int pageSize = 3});
}
