// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model_edit_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModelEditProfile _$ItemModelEditProfileFromJson(Map<String, dynamic> json) {
  return _ItemModelEditProfile.fromJson(json);
}

/// @nodoc
mixin _$ItemModelEditProfile {
  @JsonKey(name: 'body')
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelEditProfileCopyWith<ItemModelEditProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelEditProfileCopyWith<$Res> {
  factory $ItemModelEditProfileCopyWith(ItemModelEditProfile value,
          $Res Function(ItemModelEditProfile) then) =
      _$ItemModelEditProfileCopyWithImpl<$Res, ItemModelEditProfile>;
  @useResult
  $Res call({@JsonKey(name: 'body') String content});
}

/// @nodoc
class _$ItemModelEditProfileCopyWithImpl<$Res,
        $Val extends ItemModelEditProfile>
    implements $ItemModelEditProfileCopyWith<$Res> {
  _$ItemModelEditProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemModelEditProfileCopyWith<$Res>
    implements $ItemModelEditProfileCopyWith<$Res> {
  factory _$$_ItemModelEditProfileCopyWith(_$_ItemModelEditProfile value,
          $Res Function(_$_ItemModelEditProfile) then) =
      __$$_ItemModelEditProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'body') String content});
}

/// @nodoc
class __$$_ItemModelEditProfileCopyWithImpl<$Res>
    extends _$ItemModelEditProfileCopyWithImpl<$Res, _$_ItemModelEditProfile>
    implements _$$_ItemModelEditProfileCopyWith<$Res> {
  __$$_ItemModelEditProfileCopyWithImpl(_$_ItemModelEditProfile _value,
      $Res Function(_$_ItemModelEditProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$_ItemModelEditProfile(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModelEditProfile implements _ItemModelEditProfile {
  _$_ItemModelEditProfile(@JsonKey(name: 'body') this.content);

  factory _$_ItemModelEditProfile.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelEditProfileFromJson(json);

  @override
  @JsonKey(name: 'body')
  final String content;

  @override
  String toString() {
    return 'ItemModelEditProfile(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemModelEditProfile &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemModelEditProfileCopyWith<_$_ItemModelEditProfile> get copyWith =>
      __$$_ItemModelEditProfileCopyWithImpl<_$_ItemModelEditProfile>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelEditProfileToJson(
      this,
    );
  }
}

abstract class _ItemModelEditProfile implements ItemModelEditProfile {
  factory _ItemModelEditProfile(@JsonKey(name: 'body') final String content) =
      _$_ItemModelEditProfile;

  factory _ItemModelEditProfile.fromJson(Map<String, dynamic> json) =
      _$_ItemModelEditProfile.fromJson;

  @override
  @JsonKey(name: 'body')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ItemModelEditProfileCopyWith<_$_ItemModelEditProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
