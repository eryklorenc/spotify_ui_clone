// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model_album_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModelAlbumView _$ItemModelAlbumViewFromJson(Map<String, dynamic> json) {
  return _ItemModelAlbumView.fromJson(json);
}

/// @nodoc
mixin _$ItemModelAlbumView {
  @JsonKey(name: 'body')
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelAlbumViewCopyWith<ItemModelAlbumView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelAlbumViewCopyWith<$Res> {
  factory $ItemModelAlbumViewCopyWith(
          ItemModelAlbumView value, $Res Function(ItemModelAlbumView) then) =
      _$ItemModelAlbumViewCopyWithImpl<$Res, ItemModelAlbumView>;
  @useResult
  $Res call({@JsonKey(name: 'body') String content});
}

/// @nodoc
class _$ItemModelAlbumViewCopyWithImpl<$Res, $Val extends ItemModelAlbumView>
    implements $ItemModelAlbumViewCopyWith<$Res> {
  _$ItemModelAlbumViewCopyWithImpl(this._value, this._then);

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
abstract class _$$_ItemModelAlbumViewCopyWith<$Res>
    implements $ItemModelAlbumViewCopyWith<$Res> {
  factory _$$_ItemModelAlbumViewCopyWith(_$_ItemModelAlbumView value,
          $Res Function(_$_ItemModelAlbumView) then) =
      __$$_ItemModelAlbumViewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'body') String content});
}

/// @nodoc
class __$$_ItemModelAlbumViewCopyWithImpl<$Res>
    extends _$ItemModelAlbumViewCopyWithImpl<$Res, _$_ItemModelAlbumView>
    implements _$$_ItemModelAlbumViewCopyWith<$Res> {
  __$$_ItemModelAlbumViewCopyWithImpl(
      _$_ItemModelAlbumView _value, $Res Function(_$_ItemModelAlbumView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$_ItemModelAlbumView(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModelAlbumView implements _ItemModelAlbumView {
  _$_ItemModelAlbumView(@JsonKey(name: 'body') this.content);

  factory _$_ItemModelAlbumView.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelAlbumViewFromJson(json);

  @override
  @JsonKey(name: 'body')
  final String content;

  @override
  String toString() {
    return 'ItemModelAlbumView(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemModelAlbumView &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemModelAlbumViewCopyWith<_$_ItemModelAlbumView> get copyWith =>
      __$$_ItemModelAlbumViewCopyWithImpl<_$_ItemModelAlbumView>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelAlbumViewToJson(
      this,
    );
  }
}

abstract class _ItemModelAlbumView implements ItemModelAlbumView {
  factory _ItemModelAlbumView(@JsonKey(name: 'body') final String content) =
      _$_ItemModelAlbumView;

  factory _ItemModelAlbumView.fromJson(Map<String, dynamic> json) =
      _$_ItemModelAlbumView.fromJson;

  @override
  @JsonKey(name: 'body')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ItemModelAlbumViewCopyWith<_$_ItemModelAlbumView> get copyWith =>
      throw _privateConstructorUsedError;
}
