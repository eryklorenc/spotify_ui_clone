import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model_edit_profile.freezed.dart';
part 'item_model_edit_profile.g.dart';

@freezed
class ItemModelEditProfile with _$ItemModelEditProfile {
  factory ItemModelEditProfile(
   @JsonKey(name: 'body') String content,
  ) = _ItemModelEditProfile;

  factory ItemModelEditProfile.fromJson(Map<String, dynamic> json) =>
      _$ItemModelEditProfileFromJson(json);
}
