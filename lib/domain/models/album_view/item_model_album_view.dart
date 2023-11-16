import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_model_album_view.freezed.dart';
part 'item_model_album_view.g.dart';


@freezed
class ItemModelAlbumView with _$ItemModelAlbumView {
  factory ItemModelAlbumView(
   @JsonKey(name: 'body') String content,
  ) = _ItemModelAlbumView;

  factory ItemModelAlbumView.fromJson(Map<String, dynamic> json) =>
      _$ItemModelAlbumViewFromJson(json);
}
