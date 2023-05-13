class HashTagModel {
  String title;

  HashTagModel({required this.title});
  // کروشه باز و بسته میذاریم برای الزامی بودن نام و از دستور ریکوآیرد برای الزامی بودن پارامتر استفاده میکنیم
}

class BlogModel {
  int id;
  String imageUrl;
  String title;
  String writer;
  String profileWriterImageUrl;
  String date;
  String content;
  String views;

  BlogModel(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.writer,
      required this.profileWriterImageUrl,
      required this.date,
      required this.content,
      required this.views});
}
