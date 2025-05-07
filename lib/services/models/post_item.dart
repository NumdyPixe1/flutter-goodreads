class PostItem {
  final String ownerName;
  final String ownerImage;
  final String bookTitle;
  final String authorName;
  final String bookImage;
  final int like;
  final String createdDate;
  final double sizeBookImage;

  PostItem(
      {required this.ownerName,
      required this.ownerImage,
      required this.bookTitle,
      required this.authorName,
      required this.bookImage,
      required this.like,
      required this.createdDate,
      required this.sizeBookImage});
}
