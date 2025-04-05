class PostItem {
  final String id;
  final String ownerName;
  final String ownerImage;
  final String bookImage;
  final int like;
  final DateTime createdDate;

  PostItem(
      {required this.id,
      required this.ownerName,
      required this.ownerImage,
      required this.bookImage,
      required this.like,
      required this.createdDate});
}
