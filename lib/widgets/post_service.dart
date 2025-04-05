import 'package:numdao_finalproject/widgets/post_item.dart';

abstract class PostService {
  Future<List<PostItem>> getPostItems({int pageIndex = 1, int pageSize = 3});
}
