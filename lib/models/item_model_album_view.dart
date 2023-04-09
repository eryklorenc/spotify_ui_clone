class ItemModelAlbumView {
  const ItemModelAlbumView({
    required this.content,
  });
  final String content;

  ItemModelAlbumView.fromJson(Map<String, dynamic> json)
      : content = json['body'];
}