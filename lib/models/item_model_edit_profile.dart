class ItemModelEditProfile {
  const ItemModelEditProfile({
    required this.content,
  });
  final String content;

  ItemModelEditProfile.fromJson(Map<String, dynamic> json)
      : content = json['body'];
}