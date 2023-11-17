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
abstract class _$$ItemModelEditProfileImplCopyWith<$Res>
    implements $ItemModelEditProfileCopyWith<$Res> {
  factory _$$ItemModelEditProfileImplCopyWith(_$ItemModelEditProfileImpl value,
          $Res Function(_$ItemModelEditProfileImpl) then) =
      __$$ItemModelEditProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'body') String content});
}

/// @nodoc
class __$$ItemModelEditProfileImplCopyWithImpl<$Res>
    extends _$ItemModelEditProfileCopyWithImpl<$Res, _$ItemModelEditProfileImpl>
    implements _$$ItemModelEditProfileImplCopyWith<$Res> {
  __$$ItemModelEditProfileImplCopyWithImpl(_$ItemModelEditProfileImpl _value,
      $Res Function(_$ItemModelEditProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$ItemModelEditProfileImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemModelEditProfileImpl implements _ItemModelEditProfile {
  _$ItemModelEditProfileImpl(@JsonKey(name: 'body') this.content);

  factory _$ItemModelEditProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemModelEditProfileImplFromJson(json);

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
            other is _$ItemModelEditProfileImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemModelEditProfileImplCopyWith<_$ItemModelEditProfileImpl>
      get copyWith =>
          __$$ItemModelEditProfileImplCopyWithImpl<_$ItemModelEditProfileImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemModelEditProfileImplToJson(
      this,
    );
  }
}

abstract class _ItemModelEditProfile implements ItemModelEditProfile {
  factory _ItemModelEditProfile(@JsonKey(name: 'body') final String content) =
      _$ItemModelEditProfileImpl;

  factory _ItemModelEditProfile.fromJson(Map<String, dynamic> json) =
      _$ItemModelEditProfileImpl.fromJson;

  @override
  @JsonKey(name: 'body')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ItemModelEditProfileImplCopyWith<_$ItemModelEditProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}
